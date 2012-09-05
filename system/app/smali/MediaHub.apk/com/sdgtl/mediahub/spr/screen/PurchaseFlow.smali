.class public Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;
.super Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Lcom/sdgtl/mediahub/spr/screen/of;

.field private J:Ljava/util/ArrayList;

.field private K:Landroid/view/View;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/LinearLayout;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/LinearLayout;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/LinearLayout;

.field private V:Landroid/widget/ListView;

.field private W:Landroid/widget/EditText;

.field private X:Ljava/lang/String;

.field private Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private Z:Z

.field a:Landroid/widget/TextView;

.field private aA:Z

.field private aB:I

.field private aC:Lcom/sdgtl/mediahub/spr/c/a;

.field private aD:J

.field private aE:Z

.field private aF:Ljava/lang/String;

.field private aG:Landroid/app/ProgressDialog;

.field private aH:Landroid/app/AlertDialog;

.field private aI:Landroid/app/AlertDialog;

.field private aJ:Lcom/sdgtl/mediahub/spr/screen/ol;

.field private aK:Lcom/sdgtl/mediahub/spr/screen/oe;

.field private aL:Ljava/lang/String;

.field private aM:I

.field private aN:I

.field private aO:I

.field private aP:Landroid/content/BroadcastReceiver;

.field private aa:Lcom/sdgtl/mediahub/spr/common/dm;

.field private ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

.field private ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

.field private ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

.field private ae:J

.field private af:J

.field private ag:J

.field private ah:J

.field private ai:J

.field private aj:J

.field private ak:Lcom/sdgtl/mediahub/spr/common/dh;

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:I

.field private ap:Ljava/lang/String;

.field private aq:Ljava/lang/String;

.field private ar:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

.field private as:Ljava/lang/String;

.field private at:D

.field private au:D

.field private av:Lcom/sdgtl/mediahub/spr/common/de;

.field private aw:Lcom/sdgtl/mediahub/spr/common/dn;

.field private ax:Lcom/sdgtl/mediahub/spr/common/dn;

.field private ay:Ljava/util/ArrayList;

.field private az:Ljava/util/ArrayList;

.field public b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/Handler;

.field public final h:Landroid/os/Handler;

.field public final i:Landroid/os/Handler;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/sdgtl/mediahub/spr/screen/oh;

.field private m:Ljava/util/ArrayList;

.field private n:Landroid/app/ProgressDialog;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->J:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Z:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ae:J

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ak:Lcom/sdgtl/mediahub/spr/common/dh;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->av:Lcom/sdgtl/mediahub/spr/common/de;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->az:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aB:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aE:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ol;->a:Lcom/sdgtl/mediahub/spr/screen/ol;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aJ:Lcom/sdgtl/mediahub/spr/screen/ol;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/oe;->a:Lcom/sdgtl/mediahub/spr/screen/oe;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aK:Lcom/sdgtl/mediahub/spr/screen/oe;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aL:Ljava/lang/String;

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aM:I

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aN:I

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aO:I

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/mx;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/mx;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/nn;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/nn;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/nx;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/nx;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ny;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ny;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/nz;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/nz;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oa;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/oa;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ob;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ob;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oc;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/oc;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->i:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/od;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/od;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aP:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ah:J

    return-wide v0
.end method

.method static synthetic B(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ai:J

    return-wide v0
.end method

.method static synthetic C(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aj:J

    return-wide v0
.end method

.method static synthetic D(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dh;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ak:Lcom/sdgtl/mediahub/spr/common/dh;

    return-object v0
.end method

.method static synthetic E(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aD:J

    return-wide v0
.end method

.method static synthetic F(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aG:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method static synthetic G(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c()V

    return-void
.end method

.method static synthetic H(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic I(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic J(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic K(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic L(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/screen/oh;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    return-object v0
.end method

.method static synthetic M(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/screen/oe;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aK:Lcom/sdgtl/mediahub/spr/screen/oe;

    return-object v0
.end method

.method static synthetic N(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic O(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)D
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    return-wide v0
.end method

.method static synthetic P(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    return-object v0
.end method

.method static synthetic Q(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aA:Z

    return v0
.end method

.method static synthetic R(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aB:I

    return v0
.end method

.method static synthetic S(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic T(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aI:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic U(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/common/dn;)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->e(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method static synthetic V(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aG:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic W(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aH:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic X(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aE:Z

    return v0
.end method

.method static synthetic Y(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d()V

    return-void
.end method

.method static synthetic Z(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->an:Z

    return v0
.end method

.method static synthetic a(DD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;ILjava/lang/CharSequence;)Ljava/lang/Boolean;
    .registers 4

    packed-switch p1, :pswitch_data_12

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_8
    return-object v0

    :pswitch_9
    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :pswitch_data_12
    .packed-switch 0xfb5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private a()V
    .registers 8

    const/16 v6, 0x1d

    const/4 v5, 0x0

    const-string v0, ""

    const v1, 0x7f0a006b

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/np;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/np;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ao:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ar:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->f:Ljava/lang/String;

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_8f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    const-string v1, "N"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iput v5, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->e:I

    :goto_4a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_64

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d6

    :cond_64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "purchaseRequest_info"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v1, :cond_112

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->e(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_108

    iput v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aM:I

    iput v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aN:I

    iput v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aO:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x1f

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ag:J

    :goto_8e
    return-void

    :cond_8f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    const-string v1, "Y"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ar:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->e:I

    goto :goto_4a

    :cond_9e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->X:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_50

    :cond_d6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5e

    :cond_108
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V

    goto/16 :goto_8e

    :cond_112
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v6, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->af:J

    goto/16 :goto_8e
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    const/16 v1, 0x8

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz p2, :cond_d

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method private a(Lcom/sdgtl/mediahub/spr/common/dn;I)V
    .registers 5

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aM:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0xa

    if-ne p1, v0, :cond_b

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :cond_a
    :goto_a
    return-void

    :cond_b
    if-nez p1, :cond_a

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_a
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ag:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aH:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aG:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aC:Lcom/sdgtl/mediahub/spr/c/a;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/de;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->av:Lcom/sdgtl/mediahub/spr/common/de;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dh;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ak:Lcom/sdgtl/mediahub/spr/common/dh;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dm;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aa:Lcom/sdgtl/mediahub/spr/common/dm;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dn;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/common/dn;I)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/screen/ol;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aJ:Lcom/sdgtl/mediahub/spr/screen/ol;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aL:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->am:Z

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;ZLandroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;)V
    .registers 8

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/common/dn;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3b

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->h:Landroid/os/Handler;

    invoke-static {p0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :goto_35
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-direct {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/common/dn;I)V

    :cond_3a
    return-void

    :cond_3b
    if-eqz p1, :cond_52

    const v1, 0x7f0a01b0

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Ljava/lang/CharSequence;)V

    :goto_4b
    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->removeDialog(I)V

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V

    goto :goto_35

    :cond_52
    iget-object v1, p3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->b:Ljava/lang/String;

    iget v2, p3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    invoke-static {p2, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Ljava/lang/CharSequence;)V

    goto :goto_4b
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private a(Lcom/sdgtl/mediahub/spr/common/dn;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/dn;->h:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p1, Lcom/sdgtl/mediahub/spr/common/dn;->h:Ljava/lang/String;

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_a

    :cond_1b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v2, p1, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/c/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3f

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_a

    :cond_3f
    move v0, v1

    goto :goto_a
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/screen/oe;)Z
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aK:Lcom/sdgtl/mediahub/spr/screen/oe;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/oe;->b:Lcom/sdgtl/mediahub/spr/screen/oe;

    if-ne v0, v2, :cond_16

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aK:Lcom/sdgtl/mediahub/spr/screen/oe;

    move v0, v1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_b
.end method

.method private a(Ljava/util/ArrayList;)Z
    .registers 9

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/dn;->d:I

    if-ne v3, v1, :cond_5

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    iget-wide v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static b(DD)D
    .registers 9

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-double v3, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(Lcom/sdgtl/mediahub/spr/common/dn;)I
    .registers 5

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_1c

    iget v1, p1, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    :goto_1b
    return v0

    :cond_1c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1b
.end method

.method private b()V
    .registers 8

    const v6, 0x7f0d0037

    const v2, 0x7f0d0036

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x8

    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setContentView(I)V

    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_3c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3c
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004a

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_244

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->o:Landroid/widget/ImageView;

    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->p:Landroid/widget/ImageView;

    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->q:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d0039

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d003b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->r:Landroid/widget/TextView;

    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s:Landroid/widget/TextView;

    :goto_a8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v1, 0x7f0d0108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0d0109

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w:Landroid/widget/LinearLayout;

    const v2, 0x7f0d00ae

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x:Landroid/widget/TextView;

    const v1, 0x7f0d0116

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b1

    const v0, 0x7f0d0106

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->z:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d0107

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->A:Landroid/widget/Button;

    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->B:Landroid/widget/ImageView;

    :goto_fd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->C:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0117

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->D:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0118

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->F:Landroid/widget/TextView;

    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->U:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->U:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0032

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/nq;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/nq;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->K:Landroid/view/View;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->K:Landroid/view/View;

    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->L:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->L:Landroid/widget/LinearLayout;

    const v2, 0x7f0d010f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->P:Landroid/widget/TextView;

    const v2, 0x7f0a00ad

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0113

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->R:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0114

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->S:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0115

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->T:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->K:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/sdgtl/mediahub/spr/screen/oh;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/nr;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/nr;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ns;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ns;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :cond_244
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v1, 0x7f0d0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s:Landroid/widget/TextView;

    goto/16 :goto_a8

    :cond_2b1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->z:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0107

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->A:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->B:Landroid/widget/ImageView;

    goto/16 :goto_fd
.end method

.method private b(Landroid/view/View;Landroid/view/View;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    if-eqz p2, :cond_e

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelected(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-le v0, v2, :cond_39

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_39
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aN:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ah:J

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dn;)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/dn;->d:I

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    iput-wide v1, p1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    packed-switch v0, :pswitch_data_3c

    :cond_12
    :goto_12
    return-void

    :pswitch_13
    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_12

    :pswitch_1f
    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_12

    :pswitch_2b
    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_13
        :pswitch_2b
    .end packed-switch
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/screen/oe;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aK:Lcom/sdgtl/mediahub/spr/screen/oe;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->X:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->am:Z

    return v0
.end method

.method private static c(DD)D
    .registers 9

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sub-double v3, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method private c()V
    .registers 11

    const/4 v9, 0x4

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setTitle(I)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->al:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->o:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_30
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_310

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->r:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a0075

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_317

    :cond_88
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8d
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_ef

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31e

    :cond_ad
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b8
    :goto_b8
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v3, "03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33f

    :cond_cc
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a00f4

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ef
    :goto_ef
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->an:Z

    if-eqz v0, :cond_407

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aq:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_116

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aq:Ljava/lang/String;

    const-string v2, "05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_378

    :cond_116
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_11b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_126
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->q:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->J:Ljava/util/ArrayList;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/of;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->J:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v2}, Lcom/sdgtl/mediahub/spr/screen/of;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->I:Lcom/sdgtl/mediahub/spr/screen/of;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->I:Lcom/sdgtl/mediahub/spr/screen/of;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_37f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a:Landroid/widget/TextView;

    const v2, 0x7f0a003b

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_177
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->b:Ljava/lang/String;

    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->b:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_390

    :cond_18f
    const-string v0, "02"

    :goto_191
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v4

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_394

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    const-string v2, "01"

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v2

    :goto_1b5
    cmp-long v0, v4, v2

    if-ltz v0, :cond_3a2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->A:Landroid/widget/Button;

    const v2, 0x7f0a00d3

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    :goto_1c1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->A:Landroid/widget/Button;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/nw;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/nw;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_400

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1d6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->C:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a00bd

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->i:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->D:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f0a0080

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->F:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a0082

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->E:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a0101

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->j:D

    invoke-static {p0, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->G:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a0102

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->k:D

    invoke-static {p0, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->H:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a0103

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->l:D

    invoke-static {p0, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ""

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->p:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_4e2

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->p:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_2c8
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->R:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->p:Ljava/lang/String;

    const-string v3, "**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_2e4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->p:Ljava/lang/String;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move v0, v2

    :cond_2e4
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->S:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->p:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->T:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->a()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Ljava/util/ArrayList;)V

    :cond_30f
    :goto_30f
    return-void

    :cond_310
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_74

    :cond_317
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8d

    :cond_31e
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v3, "03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_332

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    :cond_332
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b8

    :cond_33f
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v3, "02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_353

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v3, "04"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    :cond_353
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a00f5

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ef

    :cond_378
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_11b

    :cond_37f
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_177

    :cond_390
    const-string v0, "01"

    goto/16 :goto_191

    :cond_394
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    const-string v2, "02"

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v2

    goto/16 :goto_1b5

    :cond_3a2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->g:Ljava/lang/String;

    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ba

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->g:Ljava/lang/String;

    const-string v2, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3cc

    :cond_3ba
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->A:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c1

    :cond_3cc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    const-string v2, "02"

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3f2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->A:Landroid/widget/Button;

    const v2, 0x7f0a00c5

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c1

    :cond_3f2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->A:Landroid/widget/Button;

    const v2, 0x7f0a0067

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c1

    :cond_400
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1d6

    :cond_407
    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_492

    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setTitle(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aA:Z

    if-eqz v0, :cond_47c

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_433

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_433
    :goto_433
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_443

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_443
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ar:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->N:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {p0, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/oh;->notifyDataSetChanged()V

    :goto_460
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_30f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_30f

    :cond_47c
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_487

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_487
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_433

    :cond_492
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4ac

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4ac
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_4d7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4d1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_460

    :cond_4d7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4d1

    :cond_4e2
    move v0, v1

    move-object v1, v2

    goto/16 :goto_2c8
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aO:I

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ai:J

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aF:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dn;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/common/dn;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aM:I

    return v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aG:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aG:Landroid/app/ProgressDialog;

    const v1, 0x7f0a006a

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aG:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V
    .registers 15

    const/4 v12, 0x0

    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/dn;->c()Z

    move-result v1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/screen/oh;->b()I

    move-result v4

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->c()I

    move-result v5

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/dn;->d()Z

    move-result v6

    if-nez v6, :cond_2e

    if-eqz v1, :cond_2d

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-boolean v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aA:Z

    if-nez v6, :cond_2d

    if-eqz v1, :cond_280

    packed-switch v2, :pswitch_data_4a4

    :cond_37
    :goto_37
    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_49c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_42
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->N:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {p0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d

    :pswitch_4e
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v1, :cond_7c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v1

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v4, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    goto :goto_37

    :cond_7c
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v1, :cond_a6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v5, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    goto :goto_37

    :cond_a6
    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v1, v1, v10

    if-lez v1, :cond_c1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    goto/16 :goto_37

    :cond_c1
    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    goto/16 :goto_37

    :pswitch_c6
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v1, :cond_f5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v1

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v5, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    goto/16 :goto_37

    :cond_f5
    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v1, v1, v10

    if-lez v1, :cond_110

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    goto/16 :goto_37

    :cond_110
    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    goto/16 :goto_37

    :pswitch_115
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->b(I)D

    move-result-wide v1

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v6, :cond_1b2

    iget-wide v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v0, v5, v1

    if-lez v0, :cond_141

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v4, v5, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    :cond_141
    iget-wide v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v7, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v5, v6, v7, v8}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v5

    cmpl-double v0, v1, v5

    if-lez v0, :cond_181

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v5, v5, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v1, v2, v5, v6}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v4, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    :cond_181
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v5, v5, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-wide v7, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v1, v2, v7, v8}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v1

    invoke-static {v5, v6, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-virtual {v0, v4, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto/16 :goto_37

    :cond_1b2
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v4, :cond_249

    iget-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v0, v6, v1

    if-lez v0, :cond_1d8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v4, v5, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    :cond_1d8
    iget-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v8, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v6, v7, v8, v9}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v6

    cmpl-double v0, v1, v6

    if-lez v0, :cond_218

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v6, v4, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v1, v2, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v5, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    :cond_218
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v6, v4, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-wide v8, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v1, v2, v8, v9}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v1

    invoke-static {v6, v7, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-virtual {v0, v5, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto/16 :goto_37

    :cond_249
    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v4, v4, v10

    if-lez v4, :cond_27b

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v0, v1, v4

    if-lez v0, :cond_26d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    :goto_25e
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    :cond_26d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v4, v5, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto :goto_25e

    :cond_27b
    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    goto/16 :goto_37

    :cond_280
    packed-switch v2, :pswitch_data_4ae

    goto/16 :goto_37

    :pswitch_285
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_29c

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v6, v2, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v0, v1, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v5, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    :cond_29c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_37

    move v2, v3

    :goto_2a5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_37

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_31b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v4, v5, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v4

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v0, v4, v0

    if-lez v0, :cond_2f7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto/16 :goto_37

    :cond_2f7
    cmpl-double v0, v4, v10

    if-lez v0, :cond_31b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v6, v1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v6, v7, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v0, v1, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    :cond_31b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a5

    :pswitch_31f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_336

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v5, v2, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v0, v1, v5, v6}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v4, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    :cond_336
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_37

    move v2, v3

    :goto_33f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_37

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_3b5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v4, v5, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v4

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v0, v4, v0

    if-lez v0, :cond_391

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto/16 :goto_37

    :cond_391
    cmpl-double v0, v4, v10

    if-lez v0, :cond_3b5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v6, v1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v6, v7, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v0, v1, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    :cond_3b5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_33f

    :pswitch_3b9
    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v4, p1}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, p1, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    move v2, v3

    :goto_3cd
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_3fc

    :goto_3d5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e6

    move v2, v3

    :goto_3de
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_414

    :cond_3e6
    :goto_3e6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_486

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto/16 :goto_37

    :cond_3fc
    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    if-ne v4, v1, :cond_410

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3d5

    :cond_410
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3cd

    :cond_414
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_481

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v4, v5, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v4

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v0, v4, v0

    if-lez v0, :cond_45d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto :goto_3e6

    :cond_45d
    cmpl-double v0, v4, v10

    if-lez v0, :cond_481

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v6, v1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v6, v7, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v0, v1, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    :cond_481
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3de

    :cond_486
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-wide v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    iput-wide v10, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto/16 :goto_37

    :cond_49c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_42

    :pswitch_data_4a4
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_c6
        :pswitch_115
    .end packed-switch

    :pswitch_data_4ae
    .packed-switch 0x1
        :pswitch_285
        :pswitch_31f
        :pswitch_3b9
    .end packed-switch
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ae:J

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aN:I

    return v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->af:J

    return-void
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aO:I

    return v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aj:J

    return-void
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ac:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    return-object v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aD:J

    return-void
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/de;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->av:Lcom/sdgtl/mediahub/spr/common/de;

    return-object v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Z:Z

    return v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->al:Z

    return v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ae:J

    return-wide v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dm;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aa:Lcom/sdgtl/mediahub/spr/common/dm;

    return-object v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 16

    const/4 v14, 0x3

    const/4 v12, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    iget-boolean v5, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aA:Z

    iput v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aB:I

    if-eqz v5, :cond_17

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_17
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->az:Ljava/util/ArrayList;

    if-eqz v0, :cond_464

    iget-object v8, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->az:Ljava/util/ArrayList;

    if-eqz v8, :cond_23

    if-nez v9, :cond_9b

    :cond_23
    move v2, v4

    :cond_24
    :goto_24
    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aB:I

    if-ltz v2, :cond_44f

    move v1, v3

    :goto_29
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_da

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aA:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aA:Z

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_83

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->d:I

    if-eqz v1, :cond_83

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/screen/oh;->b()I

    move-result v8

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/screen/oh;->c()I

    move-result v9

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    if-eqz v5, :cond_11a

    packed-switch v1, :pswitch_data_47a

    :cond_6d
    :goto_6d
    :pswitch_6d
    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_447

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_78
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->N:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-static {p0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_83
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->az:Ljava/util/ArrayList;

    :goto_87
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_9a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_9a
    return-void

    :cond_9b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a3

    move v2, v4

    goto :goto_24

    :cond_a3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_b0

    move v2, v4

    goto/16 :goto_24

    :cond_b0
    move v2, v3

    :goto_b1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_ba

    move v2, v4

    goto/16 :goto_24

    :cond_ba
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_be
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    if-ne v1, v0, :cond_be

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b1

    :cond_da
    if-eq v1, v2, :cond_f0

    add-int/lit8 v4, v4, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v8, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->az:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v8, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_f0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_29

    :pswitch_f5
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    invoke-virtual {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    goto/16 :goto_6d

    :pswitch_102
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    invoke-virtual {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    invoke-static {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6d

    :cond_11a
    packed-switch v1, :pswitch_data_484

    :pswitch_11d
    goto/16 :goto_6d

    :pswitch_11f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v1, :cond_142

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v8, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iput-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    invoke-virtual {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    goto/16 :goto_6d

    :cond_142
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v1, :cond_165

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v4, v9}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v9, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    goto/16 :goto_6d

    :cond_165
    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_178

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    invoke-virtual {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    goto/16 :goto_6d

    :cond_178
    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    goto/16 :goto_6d

    :pswitch_17d
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->b(I)D

    move-result-wide v10

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v1, :cond_26d

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    cmpl-double v1, v10, v4

    if-ltz v1, :cond_1c3

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    invoke-virtual {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_1a5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6d

    if-eq v1, v2, :cond_1bf

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v1, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    :cond_1bf
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a5

    :cond_1c3
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v2, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_263

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    cmpl-double v0, v4, v6

    if-lez v0, :cond_1fa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_1f8
    if-gez v8, :cond_1fe

    :cond_1fa
    :goto_1fa
    iput-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto/16 :goto_6d

    :cond_1fe
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v14, :cond_24d

    if-eq v8, v2, :cond_24d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_24d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v0

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_253

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_1fa

    :cond_24d
    move-wide v0, v4

    add-int/lit8 v4, v8, -0x1

    move v8, v4

    move-wide v4, v0

    goto :goto_1f8

    :cond_253
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v1

    invoke-static {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v1

    invoke-virtual {v0, v8, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    goto :goto_1fa

    :cond_263
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v12, v13, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v1

    invoke-virtual {v0, v8, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    goto :goto_1fa

    :cond_26d
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v1, :cond_357

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    cmpl-double v1, v10, v4

    if-ltz v1, :cond_2ad

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    invoke-virtual {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iput-object v12, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_28f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6d

    if-eq v1, v2, :cond_2a9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v1, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    :cond_2a9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28f

    :cond_2ad
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v9}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v2, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_34d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v9, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    cmpl-double v0, v4, v6

    if-lez v0, :cond_2e4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_2e2
    if-gez v8, :cond_2e8

    :cond_2e4
    :goto_2e4
    iput-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto/16 :goto_6d

    :cond_2e8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v14, :cond_337

    if-eq v8, v2, :cond_337

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_337

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v0

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_33d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_2e4

    :cond_337
    move-wide v0, v4

    add-int/lit8 v4, v8, -0x1

    move v8, v4

    move-wide v4, v0

    goto :goto_2e2

    :cond_33d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v1

    invoke-static {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v1

    invoke-virtual {v0, v8, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    goto :goto_2e4

    :cond_34d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-static {v12, v13, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v1

    invoke-virtual {v0, v9, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    goto :goto_2e4

    :cond_357
    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    cmpl-double v1, v10, v4

    if-ltz v1, :cond_391

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-wide v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    invoke-virtual {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iput-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_373
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6d

    if-eq v1, v2, :cond_38d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v1, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    :cond_38d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_373

    :cond_391
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v2, v10, v11}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v4, v6

    :cond_3a2
    :goto_3a2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3c2

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    invoke-static {v4, v5, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v0

    cmpl-double v8, v0, v6

    if-lez v8, :cond_43d

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v8, v4

    move-wide v4, v0

    :goto_3bc
    if-gez v8, :cond_3d8

    :cond_3be
    :goto_3be
    iput-wide v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto/16 :goto_6d

    :cond_3c2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v14, :cond_3a2

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->k:D

    invoke-static {v4, v5, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(DD)D

    move-result-wide v0

    move-wide v4, v0

    goto :goto_3a2

    :cond_3d8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v14, :cond_427

    if-eq v8, v2, :cond_427

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_427

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v0

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_42d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v8, v6, v7}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_3be

    :cond_427
    move-wide v0, v4

    add-int/lit8 v4, v8, -0x1

    move v8, v4

    move-wide v4, v0

    goto :goto_3bc

    :cond_42d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v1, v8}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(I)D

    move-result-wide v1

    invoke-static {v1, v2, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v1

    invoke-virtual {v0, v8, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(ID)V

    goto :goto_3be

    :cond_43d
    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    invoke-static {v0, v1, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    goto/16 :goto_6d

    :cond_447
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_78

    :cond_44f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->az:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aA:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_87

    :cond_464
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->az:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aA:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/oh;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_87

    nop

    :pswitch_data_47a
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_6d
        :pswitch_102
    .end packed-switch

    :pswitch_data_484
    .packed-switch 0x1
        :pswitch_11f
        :pswitch_11d
        :pswitch_17d
    .end packed-switch
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ao:I

    return v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->af:J

    return-wide v0
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    return-object v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/c/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aC:Lcom/sdgtl/mediahub/spr/c/a;

    return-object v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->an:Z

    return-void
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->as:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    return-object v0
.end method

.method static synthetic x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    return-object v0
.end method

.method static synthetic y(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ag:J

    return-wide v0
.end method

.method static synthetic z(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/sdgtl/mediahub/spr/screen/oe;->a:Lcom/sdgtl/mediahub/spr/screen/oe;

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aK:Lcom/sdgtl/mediahub/spr/screen/oe;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_29

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/oe;->b:Lcom/sdgtl/mediahub/spr/screen/oe;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aK:Lcom/sdgtl/mediahub/spr/screen/oe;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v0, v1

    :goto_28
    return v0

    :cond_29
    move v0, v2

    goto :goto_28
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_28

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_28

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_27

    :cond_1b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aG:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aG:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_27
    :goto_27
    return v0

    :cond_28
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_27
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_a0

    :cond_6
    :goto_6
    :pswitch_6
    return-void

    :pswitch_7
    packed-switch p2, :pswitch_data_b6

    :goto_a
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ol;->a:Lcom/sdgtl/mediahub/spr/screen/ol;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aJ:Lcom/sdgtl/mediahub/spr/screen/ol;

    goto :goto_6

    :pswitch_f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aw:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_29

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "eula_typeCode"

    const-string v2, "03"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aj:J

    goto :goto_a

    :cond_29
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ax:Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/common/dn;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V

    goto :goto_a

    :cond_3b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aJ:Lcom/sdgtl/mediahub/spr/screen/ol;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ol;->b:Lcom/sdgtl/mediahub/spr/screen/ol;

    if-ne v0, v1, :cond_69

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "redeem_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aF:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ao:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "price_type_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aD:J

    goto :goto_a

    :cond_69
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a()V

    goto :goto_a

    :pswitch_6d
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->finish()V

    goto :goto_6

    :pswitch_73
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ao:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "price_type_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x1c

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ae:J

    goto/16 :goto_6

    :cond_9b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->am:Z

    goto/16 :goto_6

    :pswitch_data_a0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6d
        :pswitch_6
        :pswitch_6
        :pswitch_73
        :pswitch_73
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4d

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b()V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->al:Z

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Landroid/view/View;Landroid/view/View;)V

    :cond_19
    :goto_19
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aA:Z

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_63

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2a
    :goto_2a
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->am:Z

    if-eqz v0, :cond_4d

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelected(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-le v0, v4, :cond_4d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setSelection(I)V

    :cond_4d
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setTitle(I)V

    return-void

    :cond_54
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->al:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->am:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Landroid/view/View;Landroid/view/View;)V

    goto :goto_19

    :cond_63
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/16 v9, 0x8

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {v5}, Lcom/a/a/a/a/b/f;->a(Z)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aC:Lcom/sdgtl/mediahub/spr/c/a;

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->al:Z

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->am:Z

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->an:Z

    iput-wide v7, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    iput-wide v7, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aP:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_77

    const-string v0, "product_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ao:I

    const-string v0, "pricing_type_code"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v0, "product_type"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aq:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_314

    :cond_73
    const-string v0, "01"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->as:Ljava/lang/String;

    :cond_77
    :goto_77
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_31a

    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setContentView(I)V

    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->u:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->u:Landroid/widget/ImageView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/nt;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/nt;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->K:Landroid/view/View;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->K:Landroid/view/View;

    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->L:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->L:Landroid/widget/LinearLayout;

    const v3, 0x7f0d010f

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->P:Landroid/widget/TextView;

    const v3, 0x7f0a00ad

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d0032

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/nu;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/nu;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0d0103

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M:Landroid/widget/LinearLayout;

    const v1, 0x7f0d010a

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->O:Landroid/widget/TextView;

    const v1, 0x7f0d0104

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0d0036

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->o:Landroid/widget/ImageView;

    const v1, 0x7f0d003d

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->q:Landroid/widget/TextView;

    const v1, 0x7f0d003e

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->p:Landroid/widget/ImageView;

    const v1, 0x7f0d0038

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->r:Landroid/widget/TextView;

    const v1, 0x7f0d003c

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s:Landroid/widget/TextView;

    const v1, 0x7f0d0105

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a:Landroid/widget/TextView;

    const v1, 0x7f0d0109

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w:Landroid/widget/LinearLayout;

    const v1, 0x7f0d00ae

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x:Landroid/widget/TextView;

    const v1, 0x7f0d0106

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->z:Landroid/widget/RelativeLayout;

    const v3, 0x7f0d0107

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->A:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->z:Landroid/widget/RelativeLayout;

    const v3, 0x7f0d00b9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->B:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f03004a

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v3, 0x7f0d0116

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->y:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v3, 0x7f0d009f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v3, 0x7f0d0117

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    const v3, 0x7f0d0118

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->F:Landroid/widget/TextView;

    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0113

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->R:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0114

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->S:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0115

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->T:Landroid/widget/TextView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->m:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/sdgtl/mediahub/spr/screen/oh;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->K:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->l:Lcom/sdgtl/mediahub/spr/screen/oh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/nv;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/nv;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_28f
    if-eqz v2, :cond_2fa

    :try_start_291
    const-string v0, "product_info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    if-eqz v0, :cond_2fa

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->al:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2b5

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V

    :cond_2b5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ad:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ar:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ar:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    if-eqz v0, :cond_2cd

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ar:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    :cond_2cd
    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->au:D

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->at:D

    cmpl-double v0, v0, v7

    if-lez v0, :cond_31f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ao:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "price_type_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x1c

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ae:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_2fa
    .catch Ljava/lang/ClassCastException; {:try_start_291 .. :try_end_2fa} :catch_33f

    :cond_2fa
    :goto_2fa
    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iput-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W:Landroid/widget/EditText;

    iput-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->X:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setResult(I)V

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aA:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ol;->a:Lcom/sdgtl/mediahub/spr/screen/ol;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aJ:Lcom/sdgtl/mediahub/spr/screen/ol;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/oe;->a:Lcom/sdgtl/mediahub/spr/screen/oe;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aK:Lcom/sdgtl/mediahub/spr/screen/oe;

    return-void

    :cond_314
    const-string v0, "02"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->as:Ljava/lang/String;

    goto/16 :goto_77

    :cond_31a
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b()V

    goto/16 :goto_28f

    :cond_31f
    const/4 v0, 0x1

    :try_start_320
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->am:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->t:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Landroid/view/View;Landroid/view/View;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_2fa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_33e
    .catch Ljava/lang/ClassCastException; {:try_start_320 .. :try_end_33e} :catch_33f

    goto :goto_2fa

    :catch_33f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_2fa
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9

    const v6, 0x7f0a0001

    const/high16 v5, 0x7f0a

    const/4 v4, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sparse-switch p1, :sswitch_data_13c

    :goto_12
    const/16 v0, 0xc

    if-ne p1, v0, :cond_136

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aI:Landroid/app/AlertDialog;

    :goto_18
    return-object v0

    :sswitch_19
    const v2, 0x7f030048

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0d010b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0a00fe

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d010c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W:Landroid/widget/EditText;

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/mz;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/mz;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a00fd

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/na;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/na;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/nb;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/nb;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aI:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aI:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aI:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_12

    :sswitch_7f
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v2, 0x7f0a00b6

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const v3, 0x7f0a00b7

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/nc;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/nc;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_12

    :sswitch_a8
    const v0, 0x7f0a01c9

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ak:Lcom/sdgtl/mediahub/spr/common/dh;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dh;->c:Ljava/lang/String;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ak:Lcom/sdgtl/mediahub/spr/common/dh;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dh;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ak:Lcom/sdgtl/mediahub/spr/common/dh;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dh;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_c8
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/ni;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/ni;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/nj;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/nj;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_12

    :sswitch_e8
    const v0, 0x7f0a01ca

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a01cb

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/nk;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/nk;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/nl;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/nl;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_12

    :sswitch_10d
    const v0, 0x7f0a01cd

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a01ce

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/nm;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/nm;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/no;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/no;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_12

    :cond_136
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    :sswitch_data_13c
    .sparse-switch
        0xc -> :sswitch_19
        0x19 -> :sswitch_7f
        0x1a -> :sswitch_a8
        0x1b -> :sswitch_e8
        0x1d -> :sswitch_10d
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/a/a/a/a/b/f;->a(Z)V

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->al:Z

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->am:Z

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->an:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aP:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Z:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1e

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->removeDialog(I)V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->removeDialog(I)V

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->removeDialog(I)V

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->removeDialog(I)V

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->removeDialog(I)V

    :cond_1e
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7

    packed-switch p1, :pswitch_data_32

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/my;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/my;-><init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->aI:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    :pswitch_data_32
    .packed-switch 0xc
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Z:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->al:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->V:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Landroid/view/View;Landroid/view/View;)V

    goto :goto_e

    :cond_1b
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->al:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->am:Z

    if-nez v0, :cond_e

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ae:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ao:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "price_type_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x1c

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->ae:J

    goto :goto_e
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onStop()V

    return-void
.end method
