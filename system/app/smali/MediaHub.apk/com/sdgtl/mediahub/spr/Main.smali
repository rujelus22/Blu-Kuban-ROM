.class public Lcom/sdgtl/mediahub/spr/Main;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static E:Lcom/sdgtl/mediahub/spr/common/ec;

.field private static G:Z

.field private static Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

.field private static o:Lcom/sdgtl/mediahub/spr/Main;

.field private static p:Lcom/sdgtl/mediahub/spr/common/a;

.field private static q:Lcom/sdgtl/mediahub/spr/common/a;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private F:Lcom/sdgtl/mediahub/spr/common/dg;

.field private H:Z

.field private I:Z

.field private J:Landroid/view/View;

.field private K:Landroid/widget/LinearLayout;

.field private L:Landroid/widget/ImageView;

.field private M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

.field private N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

.field private O:Lcom/sdgtl/mediahub/spr/ae;

.field private P:Lcom/sdgtl/mediahub/spr/common/dx;

.field private Q:Landroid/widget/RelativeLayout;

.field private R:Landroid/widget/FrameLayout;

.field private S:I

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:I

.field private Z:Lcom/sdgtl/mediahub/spr/c/a;

.field public a:Z

.field private final aa:I

.field private final ab:I

.field private final ac:I

.field private final ad:I

.field private final ae:I

.field private final af:I

.field private ag:Ljava/lang/String;

.field private ah:Z

.field private ai:Z

.field private aj:F

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Lcom/sdgtl/mediahub/spr/ao;

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:I

.field private as:Landroid/content/BroadcastReceiver;

.field private at:Landroid/content/BroadcastReceiver;

.field public b:Ljava/util/ArrayList;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/Handler;

.field public final h:Landroid/os/Handler;

.field public final i:Landroid/os/Handler;

.field public final j:Landroid/os/Handler;

.field public k:Landroid/os/Handler;

.field public final l:Landroid/os/Handler;

.field public final m:Landroid/os/Handler;

.field private final n:I

.field private r:I

.field private s:Lcom/sdgtl/mediahub/spr/common/ek;

.field private t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private u:Lcom/sdgtl/mediahub/spr/download/a;

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/sdgtl/mediahub/spr/Main;->o:Lcom/sdgtl/mediahub/spr/Main;

    sput-object v1, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    sput-object v1, Lcom/sdgtl/mediahub/spr/Main;->q:Lcom/sdgtl/mediahub/spr/common/a;

    sput-object v1, Lcom/sdgtl/mediahub/spr/Main;->E:Lcom/sdgtl/mediahub/spr/common/ec;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/Main;->G:Z

    sput-object v1, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/sdgtl/mediahub/spr/Main;->n:I

    iput v1, p0, Lcom/sdgtl/mediahub/spr/Main;->r:I

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->F:Lcom/sdgtl/mediahub/spr/common/dg;

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->H:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->I:Z

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    iput v1, p0, Lcom/sdgtl/mediahub/spr/Main;->S:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->T:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->U:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->V:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->W:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->b:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sdgtl/mediahub/spr/Main;->aa:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ab:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ac:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ad:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ae:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/sdgtl/mediahub/spr/Main;->af:I

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->ag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->ah:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->ai:Z

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/Main;->ak:Z

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/Main;->al:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->am:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->an:Lcom/sdgtl/mediahub/spr/ao;

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->ao:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->ap:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->aq:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/b;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/b;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/q;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/q;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/x;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/x;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/y;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/y;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/z;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/z;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/aa;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/aa;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->h:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/ab;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/ab;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->i:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/ac;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/ac;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->j:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/ad;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/ad;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->k:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/c;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/c;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->l:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/d;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/d;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->m:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/e;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/e;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->as:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sdgtl/mediahub/spr/f;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/f;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->at:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/sdgtl/mediahub/spr/Main;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->z:J

    return-wide v0
.end method

.method static synthetic B(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/ek;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    return-object v0
.end method

.method static synthetic C(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->V:Z

    return-void
.end method

.method static synthetic D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    return-object v0
.end method

.method static synthetic E(Lcom/sdgtl/mediahub/spr/Main;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ak:Z

    return v0
.end method

.method static synthetic F(Lcom/sdgtl/mediahub/spr/Main;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ai:Z

    return v0
.end method

.method static synthetic G(Lcom/sdgtl/mediahub/spr/Main;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->A:J

    return-wide v0
.end method

.method static synthetic H(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->W:Z

    return-void
.end method

.method static synthetic I(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/ae;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    return-object v0
.end method

.method static synthetic J(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dx;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->P:Lcom/sdgtl/mediahub/spr/common/dx;

    return-object v0
.end method

.method static synthetic K(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->n()V

    return-void
.end method

.method static synthetic L(Lcom/sdgtl/mediahub/spr/Main;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->C:J

    return-wide v0
.end method

.method static synthetic M(Lcom/sdgtl/mediahub/spr/Main;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->D:J

    return-wide v0
.end method

.method static synthetic N(Lcom/sdgtl/mediahub/spr/Main;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->aq:Z

    return v0
.end method

.method static synthetic O(Lcom/sdgtl/mediahub/spr/Main;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->H:Z

    return v0
.end method

.method static synthetic P(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->d(Z)V

    return-void
.end method

.method static synthetic Q(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/HefeGallery;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    return-object v0
.end method

.method static synthetic R(Lcom/sdgtl/mediahub/spr/Main;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/Main;->r:I

    return v0
.end method

.method static synthetic S(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ak:Z

    return-void
.end method

.method static synthetic T(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->al:Z

    return-void
.end method

.method static synthetic U(Lcom/sdgtl/mediahub/spr/Main;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ar:I

    return v0
.end method

.method static synthetic V(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic W(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Q:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/Main;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->o:Lcom/sdgtl/mediahub/spr/Main;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;
    .registers 6

    const/4 v3, 0x0

    if-nez p0, :cond_d

    const-string v0, "MediaHubAPP"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_a
    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    return-object v0

    :cond_d
    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    if-nez v0, :cond_a

    :try_start_11
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->b(Landroid/content/Context;)V

    const-string v0, "MediaHubAPP"

    const-string v1, "ContentProviderBase is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->c:Z

    if-eqz v0, :cond_1b9

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/eo;-><init>()V

    const-string v1, "deviceUid"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->e:Ljava/lang/String;

    const-string v1, "mcc"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->a:Ljava/lang/String;

    const-string v1, "mnc"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->b:Ljava/lang/String;

    const-string v1, "csc"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->d:Ljava/lang/String;

    const-string v1, "deviceid"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->c:Ljava/lang/String;

    const-string v1, "useragent"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->f:Ljava/lang/String;

    :goto_54
    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-direct {v1, p0, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;-><init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/eo;)V

    sput-object v1, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "store_url"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "shop_id"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "channel_id"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d(Ljava/lang/String;)V

    const-string v0, "rating_level"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_94

    sget-object v1, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(I)V

    :cond_94
    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "rating_mark"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "rating_request"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "force_upgrade_yn"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->s(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "download_network"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "language_code"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "domain_support_yn"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->r(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "currency_unit"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->q(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "country_code"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->g(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "shop_time_zone"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->h(Ljava/lang/String;)V

    const-string v0, "black_list_check"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_108

    sget-object v1, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->b(I)V

    :cond_108
    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "black_list_reason"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->o(Ljava/lang/String;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/db;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/db;-><init>()V

    const-string v1, "hd_support_devices_device_id"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/db;->b:Ljava/lang/String;

    const-string v1, "hd_support_devices_device_nick_name"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/db;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/db;->b:Ljava/lang/String;

    if-nez v1, :cond_130

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/db;->a:Ljava/lang/String;

    if-eqz v1, :cond_13d

    :cond_130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/util/ArrayList;)V

    :cond_13d
    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "migration_yn"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->p(Ljava/lang/String;)V

    const-string v0, "purchase_lock_state_state"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "purchase_lock_state_period"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v1, :cond_1b7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    :goto_15c
    const-wide/16 v0, 0x0

    if-eqz v4, :cond_164

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_164
    sget-object v4, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-virtual {v4, v2, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(IJ)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "refresh_token"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "samsung_account"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "service_id"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->n(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "user_token"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    const-string v1, "user_id"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/ev;->d()Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/d/b;->a(Landroid/content/Context;)V
    :try_end_1b0
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_1b0} :catch_1b2

    goto/16 :goto_a

    :catch_1b2
    move-exception v0

    sput-object v3, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    goto/16 :goto_a

    :cond_1b7
    move v2, v0

    goto :goto_15c

    :cond_1b9
    move-object v0, v3

    goto/16 :goto_54
.end method

.method private a(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->m()V

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_15

    const/4 v0, 0x0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    if-ne v0, p1, :cond_30

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->v:Ljava/lang/String;

    goto :goto_14

    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    packed-switch p1, :pswitch_data_5c

    :pswitch_d
    move-object v0, v1

    :cond_e
    :goto_e
    return-object v0

    :pswitch_f
    const-string v1, "deviceUid"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5a

    :try_start_17
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1a} :catch_20

    move-result-object v0

    :goto_1b
    if-nez v0, :cond_e

    const-string v0, "1002"

    goto :goto_e

    :catch_20
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1b

    :pswitch_23
    const-string v0, "mcc"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "310"

    goto :goto_e

    :pswitch_2e
    const-string v0, "mnc"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "004"

    goto :goto_e

    :pswitch_39
    const-string v0, "csc"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "ATT"

    goto :goto_e

    :pswitch_44
    const-string v0, "deviceid"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "tDevice01"

    goto :goto_e

    :pswitch_4f
    const-string v0, "useragent"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "stamhub 122/SCH-I800"

    goto :goto_e

    :cond_5a
    move-object v0, v1

    goto :goto_1b

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_23
        :pswitch_2e
        :pswitch_39
        :pswitch_44
        :pswitch_4f
    .end packed-switch
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/Main;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_27

    const/16 v0, 0xe

    if-ne p1, v0, :cond_2f

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->q:Lcom/sdgtl/mediahub/spr/common/a;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->q:Lcom/sdgtl/mediahub/spr/common/a;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->q:Lcom/sdgtl/mediahub/spr/common/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/a;->b()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_17
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a()Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a()Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->q:Lcom/sdgtl/mediahub/spr/common/a;

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->q:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_27

    :cond_2f
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4b

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a()Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a()Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_27

    :cond_44
    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_27

    :cond_4b
    const/16 v0, 0xd

    if-ne p1, v0, :cond_56

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_27

    :cond_56
    const/16 v0, 0xc

    if-ne p1, v0, :cond_61

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_27

    :cond_61
    if-nez p1, :cond_27

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_27
.end method

.method private a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0xd

    if-ne p1, v0, :cond_e

    invoke-static {p0, p2, p3, p4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/16 v0, 0xc

    if-ne p1, v0, :cond_19

    invoke-static {p0, p2, p3, p4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_d

    :cond_19
    if-nez p1, :cond_d

    invoke-static {p0, p2, p3, p4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_d
.end method

.method private a(Landroid/os/Bundle;ILjava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sdgtl/mediahub/spr/Main;->d(Z)V

    iput p2, p0, Lcom/sdgtl/mediahub/spr/Main;->ar:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v0, "01"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetailDialog;

    :goto_16
    const-string v1, "isView"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    const/high16 v0, 0x10a

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_6d
    const-class v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisodeDialog;

    goto :goto_16
.end method

.method static synthetic a(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ap:Z

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/Main;->a(ILjava/lang/CharSequence;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sdgtl/mediahub/spr/Main;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/String;)V
    .registers 6

    const/4 v2, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "01"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_1f

    const-string v1, "01"

    invoke-direct {p0, v0, p1, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/os/Bundle;ILjava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->d:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_1e

    :cond_25
    const-string v1, "03"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->g:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_1e

    :cond_33
    const-string v1, "04"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->h:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_1e

    :cond_41
    const-string v1, "05"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_55

    const-string v1, "05"

    invoke-direct {p0, v0, p1, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_1e

    :cond_55
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->i:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_1e
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/Main;->v:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/ao;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/Main;->an:Lcom/sdgtl/mediahub/spr/ao;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/common/dg;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/Main;->F:Lcom/sdgtl/mediahub/spr/common/dg;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/common/dx;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/Main;->P:Lcom/sdgtl/mediahub/spr/common/dx;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/common/ek;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/Main;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/Main;->ai:Z

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/common/a;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    return-void
.end method

.method public static a(Lcom/sdgtl/mediahub/spr/common/ec;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/Main;->E:Lcom/sdgtl/mediahub/spr/common/ec;

    return-void
.end method

.method private a(Lcom/sdgtl/mediahub/spr/common/eo;)V
    .registers 10

    const v7, 0x7f0a00d4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->c()Z

    move-result v0

    if-eqz v0, :cond_160

    move v0, v1

    :goto_c
    new-instance v3, Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-direct {v3, p0, p1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;-><init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/eo;)V

    sput-object v3, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v3

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v3

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/aj;->a()V

    const-string v3, "key_view_mode"

    invoke-static {p0, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_70

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sdgtl/mediahub/spr/Main;->X:I

    :goto_30
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/ev;->d()Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/a/a;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_156

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->m()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->j(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "install_non_market_apps"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->a()Z

    move-result v6

    if-eqz v6, :cond_7e

    const/16 v0, 0xd

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a002c

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/Main;->h:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    iput v2, p0, Lcom/sdgtl/mediahub/spr/Main;->X:I

    const-string v3, "key_view_mode"

    iget v4, p0, Lcom/sdgtl/mediahub/spr/Main;->X:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_7e
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_97

    const/16 v0, 0xc

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/Main;->h:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)V

    goto :goto_6f

    :cond_97
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->c(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_aa

    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->h:Landroid/os/Handler;

    invoke-direct {p0, v2, v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(ILjava/lang/CharSequence;Landroid/os/Handler;)V

    goto :goto_6f

    :cond_aa
    if-nez v0, :cond_c0

    if-nez v5, :cond_b7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->d:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_6f

    :cond_b7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->e:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_6f

    :cond_c0
    if-nez v4, :cond_108

    if-nez v3, :cond_108

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v0, v1, :cond_108

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e2

    if-nez v5, :cond_d9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->d:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_6f

    :cond_d9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->g:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_6f

    :cond_e2
    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->l()Z

    move-result v0

    if-eqz v0, :cond_fe

    if-nez v5, :cond_f4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->d:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_6f

    :cond_f4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_6f

    :cond_fe
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_6f

    :cond_108
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_140

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_133

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_133

    move v0, v1

    :goto_11f
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/Main;->ag:Ljava/lang/String;

    if-eqz v3, :cond_125

    if-nez v0, :cond_135

    :cond_125
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->c:Landroid/os/Handler;

    invoke-direct {p0, v2, v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(ILjava/lang/CharSequence;Landroid/os/Handler;)V

    goto/16 :goto_6f

    :cond_133
    move v0, v2

    goto :goto_11f

    :cond_135
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A()I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    goto/16 :goto_6f

    :cond_140
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ap:Z

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->K:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->c(Landroid/view/View;)V

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/Main;->G:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->v:J

    goto/16 :goto_6f

    :cond_156
    const-string v0, "main_caching_data"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ag:Ljava/lang/String;

    goto/16 :goto_6f

    :cond_160
    move v0, v2

    goto/16 :goto_c
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/sdgtl/mediahub/spr/Main;->G:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    const-string v2, "app_destory"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3c

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    :cond_1d
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->finish()V

    const-string v2, "showDateSettings"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DATE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3b
    :goto_3b
    return v0

    :cond_3c
    move v0, v1

    goto :goto_3b
.end method

.method private static b(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "stamhub "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_54} :catch_b9

    :goto_54
    const-string v1, "HTTPCLIENTPOOL_UA"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v3, "MediaHubAPP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "U*** A**** : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "USERAGENT:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/ev;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ev;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ev;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_9c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9c .. :try_end_a5} :catch_be

    move-result-object v0

    :goto_a6
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/ev;->a(Ljava/lang/String;)V

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/ev;->a(I)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ev;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->d()V

    return-void

    :catch_b9
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_54

    :catch_be
    move-exception v1

    const-string v2, "packageManager to load File"

    invoke-static {v2, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_a6
.end method

.method static synthetic b(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ap:Z

    :try_start_3
    const-string v0, "MediaHubAPP"

    const-string v1, "installS******A******()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "samsungaccount.apk"

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->e:Z

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/Main;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_22
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_44

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->startActivity(Landroid/content/Intent;)V

    :goto_43
    return-void

    :cond_44
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_48} :catch_49

    goto :goto_22

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/Main;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/Main;->S:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/Main;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/Main;->w:J

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/Main;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/Main;->H:Z

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/common/ec;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/Main;->E:Lcom/sdgtl/mediahub/spr/common/ec;

    return-void
.end method

.method static synthetic b(Z)V
    .registers 1

    sput-boolean p0, Lcom/sdgtl/mediahub/spr/Main;->G:Z

    return-void
.end method

.method public static c()Lcom/sdgtl/mediahub/spr/contentProvider/a;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    return-object v0
.end method

.method private static c(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ap:Z

    :try_start_3
    const-string v0, "MediaHubAPP"

    const-string v1, "installAlternativeS******A******()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->l()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=com.osp.app.signin.alternative"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->startActivity(Landroid/content/Intent;)V

    :goto_23
    return-void

    :cond_24
    const-string v0, "samsungaccount_alternative.apk"

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->e:Z

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/Main;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_3c
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_63

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->startActivity(Landroid/content/Intent;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5d} :catch_5e

    goto :goto_23

    :catch_5e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    :cond_63
    const/4 v5, 0x0

    :try_start_64
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_5e

    goto :goto_3c
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/Main;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/Main;->r:I

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/Main;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/Main;->z:J

    return-void
.end method

.method private c(Z)V
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_32

    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_16
    const/16 v3, 0x9

    if-lt v0, v3, :cond_27

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0, v2, v4}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setContantsList(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/Main;->aj:F

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->updatePosition(F)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-direct {v3, v1}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;-><init>(B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_32
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setContantsList(Ljava/util/ArrayList;Z)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ai:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/Main;->S:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->pointToProduct(I)V

    goto :goto_26

    :cond_47
    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/Main;->aj:F

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->updatePosition(F)V

    goto :goto_26
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ap:Z

    :try_start_3
    const-string v0, "MediaHubAPP"

    const-string v1, "installMediaHubS******A******()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    const-string v0, "samsungaccount_mediahub.apk"

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/Main;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_28
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4a

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->startActivity(Landroid/content/Intent;)V

    :goto_49
    return-void

    :cond_4a
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_4f

    goto :goto_28

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/Main;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/Main;->x:J

    return-void
.end method

.method private d(Z)V
    .registers 6

    const/16 v3, 0x8

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->o()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/Main;->ar:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_8

    :cond_29
    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/v;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/v;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x10a0001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/w;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/w;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_8
.end method

.method public static d()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/Main;->G:Z

    return v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/Main;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/Main;->y:J

    return-void
.end method

.method public static e()Z
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/a;->b()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->q:Lcom/sdgtl/mediahub/spr/common/a;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->q:Lcom/sdgtl/mediahub/spr/common/a;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/a;->b()Z

    move-result v0

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/Main;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->V:Z

    return v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/Main;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/Main;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/Main;->B:J

    return-void
.end method

.method static synthetic f()Z
    .registers 1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic g()Lcom/sdgtl/mediahub/spr/common/ec;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->E:Lcom/sdgtl/mediahub/spr/common/ec;

    return-object v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/download/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/Main;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/Main;->A:J

    return-void
.end method

.method static synthetic h()Lcom/sdgtl/mediahub/spr/Main;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->o:Lcom/sdgtl/mediahub/spr/Main;

    return-object v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/ao;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->an:Lcom/sdgtl/mediahub/spr/ao;

    return-object v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/Main;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/Main;->C:J

    return-void
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/Main;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/Main;->D:J

    return-void
.end method

.method static synthetic i()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/Main;->G:Z

    return v0
.end method

.method private j()V
    .registers 9

    const/16 v7, 0xe

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x1

    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->b(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0d0086

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ao:Z

    if-nez v0, :cond_89

    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->L:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->L:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->d(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->e(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->f(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->g(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->h(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->L:Landroid/widget/ImageView;

    const v2, 0x7f020027

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_84
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->L:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_89
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ae;->getCount()I

    move-result v1

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setSelection(I)V

    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/ae;->a()Lcom/sdgtl/mediahub/spr/common/dx;

    move-result-object v0

    if-eqz v0, :cond_ad

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/ae;->a(Lcom/sdgtl/mediahub/spr/common/dx;)V

    :cond_ad
    return-void

    :cond_ae
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->L:Landroid/widget/ImageView;

    const v2, 0x7f020026

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_84

    :cond_c0
    const/4 v2, 0x2

    if-le v1, v2, :cond_9c

    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_9c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setSelection(I)V

    goto :goto_9c
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/Main;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ap:Z

    return v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->K:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private k()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->setContentView(I)V

    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->J:Landroid/view/View;

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/Main;->ah:Z

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->K:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setLoopCoverFlow(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    new-instance v1, Lcom/sdgtl/mediahub/spr/ah;

    invoke-direct {v1, p0, v2}, Lcom/sdgtl/mediahub/spr/ah;-><init>(Lcom/sdgtl/mediahub/spr/Main;B)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setCoverBitmapProvider(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_4f

    new-instance v0, Lcom/sdgtl/mediahub/spr/an;

    invoke-direct {v0, p0, v2}, Lcom/sdgtl/mediahub/spr/an;-><init>(Lcom/sdgtl/mediahub/spr/Main;B)V

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/an;->a()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setInfoBitmapProvider(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;)V

    :cond_4f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    new-instance v1, Lcom/sdgtl/mediahub/spr/n;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/n;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setOnItemClickListener(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    new-instance v1, Lcom/sdgtl/mediahub/spr/o;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/o;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setOnSelectionChangeListener(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    new-instance v1, Lcom/sdgtl/mediahub/spr/p;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/p;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6d
    new-instance v0, Lcom/sdgtl/mediahub/spr/ae;

    invoke-direct {v0, p0, v2}, Lcom/sdgtl/mediahub/spr/ae;-><init>(Lcom/sdgtl/mediahub/spr/Main;B)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    new-instance v1, Lcom/sdgtl/mediahub/spr/r;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/r;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    new-instance v1, Lcom/sdgtl/mediahub/spr/s;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/s;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    new-instance v1, Lcom/sdgtl/mediahub/spr/t;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/t;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setFlipperListener(Lcom/sdgtl/mediahub/spr/customview/HefeGallery$FlipperListener;)V

    :cond_a8
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->L:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->L:Landroid/widget/ImageView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/u;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/u;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_d9

    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Q:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    :cond_d9
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ao:Z

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->L:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e4
    return-void
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->m()V

    return-void
.end method

.method private static l()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_1e

    const-string v1, "SAMSUNG-SGH-I897"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "SGH-I987"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "SAMSUNG-SGH-I987"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    return-object v0
.end method

.method private m()V
    .registers 7

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-string v0, "main_caching_data"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ag:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ag:Ljava/lang/String;

    if-eqz v0, :cond_62

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.widget.update"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :try_start_1b
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->V:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ag:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    if-nez v0, :cond_2e

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->k()V

    :cond_2e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ak:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->c(Z)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_35} :catch_51

    :goto_35
    const-string v0, "promotion_banner_caching_data"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_85

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/Main;->W:Z

    const/4 v1, 0x1

    :try_start_40
    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sdgtl/mediahub/spr/common/dx;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->P:Lcom/sdgtl/mediahub/spr/common/dx;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->P:Lcom/sdgtl/mediahub/spr/common/dx;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/ae;->a(Lcom/sdgtl/mediahub/spr/common/dx;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->n()V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_50} :catch_80

    :goto_50
    return-void

    :catch_51
    move-exception v0

    const v2, 0x7f0a002e

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/Main;->c:Landroid/os/Handler;

    invoke-direct {p0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->a(ILjava/lang/CharSequence;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_35

    :cond_62
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->K:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->c(Landroid/view/View;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_6d
    if-lt v0, v5, :cond_75

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0, v2, v4}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setContantsList(Ljava/util/ArrayList;Z)V

    goto :goto_35

    :cond_75
    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-direct {v3, v1}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;-><init>(B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    :catch_80
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_50

    :cond_85
    new-instance v2, Lcom/sdgtl/mediahub/spr/common/dx;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/dx;-><init>()V

    move v0, v1

    :goto_8b
    if-lt v0, v5, :cond_96

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/ae;->a(Lcom/sdgtl/mediahub/spr/common/dx;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->n()V

    goto :goto_50

    :cond_96
    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cn;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/cn;-><init>()V

    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/common/cn;->e:Ljava/util/ArrayList;

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/co;

    invoke-direct {v4}, Lcom/sdgtl/mediahub/spr/common/co;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/common/dx;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8b
.end method

.method private n()V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getSelectedItemPosition()I

    move-result v0

    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->al:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ae;->getCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1e

    if-eqz v0, :cond_18

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    :cond_18
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->setSelection(I)V

    :cond_1e
    return-void
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->aq:Z

    return-void
.end method

.method private o()Z
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/Main;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->U:Z

    return v0
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/Main;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->v:J

    return-wide v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/Main;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->am:Z

    return v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->am:Z

    return-void
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/Main;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->w:J

    return-wide v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dg;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->F:Lcom/sdgtl/mediahub/spr/common/dg;

    return-object v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->I:Z

    return-void
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/Main;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->T:Z

    return v0
.end method

.method static synthetic w(Lcom/sdgtl/mediahub/spr/Main;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/Main;->S:I

    return v0
.end method

.method static synthetic x(Lcom/sdgtl/mediahub/spr/Main;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->B:J

    return-wide v0
.end method

.method static synthetic y(Lcom/sdgtl/mediahub/spr/Main;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->x:J

    return-wide v0
.end method

.method static synthetic z(Lcom/sdgtl/mediahub/spr/Main;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->y:J

    return-wide v0
.end method


# virtual methods
.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    const/16 v4, 0x52

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_45

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v2, v4, :cond_19

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->K:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_19

    :goto_18
    return v0

    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3a

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->o()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->d(Z)V

    goto :goto_18

    :cond_2a
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->moveTaskToBack(Z)Z

    goto :goto_18

    :cond_3a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_4a

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_45
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_18

    :cond_4a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_45

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_45

    move v0, v1

    goto :goto_18
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_44

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->o()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/Main;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3b

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3b

    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3b

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-ltz v1, :cond_44

    :cond_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_44

    :goto_43
    return v0

    :cond_44
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_43
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_dc

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_f

    if-nez p3, :cond_75

    :cond_f
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->a()Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/Main;->moveTaskToBack(Z)Z

    move-result v1

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->c:Z

    if-eqz v2, :cond_57

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/eo;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->e:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->a:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->b:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->d:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->c:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eo;->f:Ljava/lang/String;

    :cond_57
    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/eo;)V

    if-nez v1, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :cond_71
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->finish()V

    goto :goto_9

    :cond_75
    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/eo;-><init>()V

    const-string v1, "deviceUid"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->e:Ljava/lang/String;

    const-string v1, "mcc"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->a:Ljava/lang/String;

    const-string v1, "mnc"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->b:Ljava/lang/String;

    const-string v1, "csc"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->d:Ljava/lang/String;

    const-string v1, "deviceid"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->c:Ljava/lang/String;

    const-string v1, "useragent"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/eo;)V

    goto/16 :goto_9

    :pswitch_af
    if-ne p2, v2, :cond_c8

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/Main;->E:Lcom/sdgtl/mediahub/spr/common/ec;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/ev;->b()I

    move-result v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/Main;->E:Lcom/sdgtl/mediahub/spr/common/ec;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ec;->k:I

    if-ge v0, v1, :cond_9

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->showDialog(I)V

    goto/16 :goto_9

    :cond_c8
    if-ne p2, v3, :cond_9

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->finish()V

    goto/16 :goto_9

    :pswitch_cf
    packed-switch p2, :pswitch_data_e6

    goto/16 :goto_9

    :pswitch_d4
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_9

    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_a
        :pswitch_af
        :pswitch_cf
    .end packed-switch

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_d4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ah:Z

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->j()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getProgress()F

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/Main;->aj:F

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->onPause()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->release()V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->c(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->onResume()V

    :cond_3d
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

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->h()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_30
    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->an:Lcom/sdgtl/mediahub/spr/ao;

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/Main;->ap:Z

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/Main;->aq:Z

    invoke-static {p0}, Lcom/a/a/a/a/c/a;->a(Landroid/content/Context;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/Main;->o:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Landroid/content/Context;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->as:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sdgtl/mediahub/spr/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.READY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sdgtl.mediahub.spr.download.READY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sdgtl.mediahub.spr.widget_start"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sdgtl.mediahub.spr.widget_start_detail"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "close_detail_view"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "exit_videohub"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->at:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sdgtl/mediahub/spr/Main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->d()V

    const-string v1, "movie_category_order"

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tv_category_order"

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_b2

    :goto_b1
    return-void

    :cond_b2
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_c3

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/Main;->ao:Z

    :cond_c3
    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/Main;->V:Z

    sput-boolean v3, Lcom/sdgtl/mediahub/spr/Main;->G:Z

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/Main;->am:Z

    sput-boolean v3, Lcom/sdgtl/mediahub/spr/Main;->requestGotoMyMedia:Z

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->k()V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/Main;->j()V

    const-string v1, "product_id"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "product_id"

    invoke-static {p0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v1, :cond_135

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->K:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->c(Landroid/view/View;)V

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/Main;->ai:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/Main;->S:I

    const-string v1, "widget_from_detail"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fe

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/Main;->T:Z

    const-string v1, "widget_from_detail"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_fe
    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->c:Z

    if-eqz v1, :cond_130

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/eo;-><init>()V

    invoke-static {p0, v3}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->e:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->b:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->d:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->c:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eo;->f:Ljava/lang/String;

    :cond_130
    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/eo;)V

    goto/16 :goto_b1

    :cond_135
    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/Main;->ai:Z

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->c:Z

    if-eqz v1, :cond_142

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->L:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_b1

    :cond_142
    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/eo;)V

    goto/16 :goto_b1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_4c

    :goto_8
    new-instance v1, Lcom/sdgtl/mediahub/spr/m;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/m;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_15
    const v1, 0x7f0a0033

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0034

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0a

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/sdgtl/mediahub/spr/k;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/k;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0001

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/sdgtl/mediahub/spr/l;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/l;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    nop

    :pswitch_data_4c
    .packed-switch 0x8
        :pswitch_15
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v2, 0x0

    sput-object v2, Lcom/sdgtl/mediahub/spr/Main;->o:Lcom/sdgtl/mediahub/spr/Main;

    sput-object v2, Lcom/sdgtl/mediahub/spr/Main;->E:Lcom/sdgtl/mediahub/spr/common/ec;

    sput-object v2, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    sput-object v2, Lcom/sdgtl/mediahub/spr/Main;->q:Lcom/sdgtl/mediahub/spr/common/a;

    sput-object v2, Lcom/sdgtl/mediahub/spr/Main;->Y:Lcom/sdgtl/mediahub/spr/contentProvider/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->d()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->as:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->at:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->b()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_30
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    if-nez v0, :cond_3a

    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a()Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    :cond_3a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->B:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->b()V

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->stopService(Landroid/content/Intent;)Z

    :cond_56
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    if-nez v0, :cond_60

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->a()Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    :cond_60
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->h()V

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->u:Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->stopService(Landroid/content/Intent;)Z

    :cond_75
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fl;->c()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->a()V

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_83
    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->a()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->J:Landroid/view/View;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/Main;->J:Landroid/view/View;

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_9
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_1d
    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    if-nez v2, :cond_32

    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_2f
    return v0

    :cond_30
    move v0, v1

    goto :goto_1d

    :cond_32
    if-nez v0, :cond_39

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_2f

    :cond_39
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_6e

    :goto_40
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_2f

    :sswitch_45
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v1, 0x3

    invoke-static {p0, v0, v3, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_40

    :cond_52
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_40

    :sswitch_58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0110"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_40

    :sswitch_6a
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    goto :goto_40

    :sswitch_data_6e
    .sparse-switch
        0x7f0d016a -> :sswitch_58
        0x7f0d0170 -> :sswitch_45
        0x7f0d0172 -> :sswitch_6a
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->U:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    if-eqz v0, :cond_22

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_23

    :cond_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->N:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;->stopFlipping()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_a

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->removeDialog(I)V

    :cond_a
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 9

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {p0, p0, v0, v2}, Lcom/sdgtl/mediahub/spr/Main;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ap:Z

    if-eqz v0, :cond_33

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/Main;->ap:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->j(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/Main;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "install_non_market_apps"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v0, :cond_76

    if-nez v5, :cond_6d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->d:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    :cond_33
    :goto_33
    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/Main;->U:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->V:Z

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_118

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->W:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->P:Lcom/sdgtl/mediahub/spr/common/dx;

    if-nez v0, :cond_105

    :cond_53
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x6

    invoke-static {v0, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->A:J

    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->U:Z

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setParentPause(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->requestRender()V

    :cond_6c
    return-void

    :cond_6d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->e:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_33

    :cond_76
    if-nez v4, :cond_bc

    if-nez v3, :cond_bc

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v0, v1, :cond_bc

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_98

    if-nez v5, :cond_8f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->d:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_33

    :cond_8f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->g:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_33

    :cond_98
    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->l()Z

    move-result v0

    if-eqz v0, :cond_b2

    if-nez v5, :cond_a9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->d:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_33

    :cond_a9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_33

    :cond_b2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/Main;->p:Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_33

    :cond_bc
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->Z:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e7

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    move v0, v1

    :goto_d3
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/Main;->ag:Ljava/lang/String;

    if-eqz v3, :cond_d9

    if-nez v0, :cond_e9

    :cond_d9
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->c:Landroid/os/Handler;

    invoke-direct {p0, v2, v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(ILjava/lang/CharSequence;Landroid/os/Handler;)V

    goto/16 :goto_33

    :cond_e7
    move v0, v2

    goto :goto_d3

    :cond_e9
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A()I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    goto/16 :goto_33

    :cond_f4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->K:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->c(Landroid/view/View;)V

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/Main;->G:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v1, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->v:J

    goto/16 :goto_33

    :cond_105
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/ae;->a()Lcom/sdgtl/mediahub/spr/common/dx;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/Main;->O:Lcom/sdgtl/mediahub/spr/ae;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/ae;->a(Lcom/sdgtl/mediahub/spr/common/dx;)V

    goto/16 :goto_5c

    :cond_118
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->I:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_12a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->s:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5c

    :cond_12a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x5

    invoke-static {v0, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/Main;->z:J

    goto/16 :goto_5c
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onStart()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/Main;->c(Z)V

    :cond_c
    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onStop()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getProgress()F

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/Main;->aj:F

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/Main;->M:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->release()V

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/Main;->ai:Z

    return-void
.end method
