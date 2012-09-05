.class public Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static u:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Z

.field private F:Lcom/sdgtl/mediahub/spr/screen/db;

.field private G:Lcom/sdgtl/mediahub/spr/screen/da;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lcom/sdgtl/mediahub/spr/common/eq;

.field private L:I

.field private M:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/Button;

.field private P:Z

.field private Q:Z

.field private R:I

.field private S:Landroid/app/ProgressDialog;

.field private T:Lcom/sdgtl/mediahub/spr/download/a;

.field private U:Lcom/sdgtl/mediahub/spr/c/a;

.field private V:Z

.field private W:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private X:Landroid/content/BroadcastReceiver;

.field private Y:Landroid/content/BroadcastReceiver;

.field public final a:Landroid/os/Handler;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/Handler;

.field private h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Lcom/sdgtl/mediahub/spr/common/ep;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ListView;

.field private t:Lcom/sdgtl/mediahub/spr/screen/cw;

.field private v:Z

.field private w:Z

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->u:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->v:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->D:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->E:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/db;->a:Lcom/sdgtl/mediahub/spr/screen/db;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->F:Lcom/sdgtl/mediahub/spr/screen/db;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/da;->a:Lcom/sdgtl/mediahub/spr/screen/da;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->G:Lcom/sdgtl/mediahub/spr/screen/da;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->H:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->J:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->K:Lcom/sdgtl/mediahub/spr/common/eq;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->P:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->Q:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->V:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ca;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ca;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->W:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ck;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ck;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/cm;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/cm;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/cp;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/cp;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/cq;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/cq;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->X:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/cs;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/cs;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ct;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ct;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/cu;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/cu;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/cv;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/cv;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/cb;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/cb;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->Y:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic B(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic D(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/screen/da;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->G:Lcom/sdgtl/mediahub/spr/screen/da;

    return-object v0
.end method

.method static synthetic E(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->D:I

    return v0
.end method

.method static synthetic F(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->E:Z

    return v0
.end method

.method static synthetic G(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b()V

    return-void
.end method

.method static synthetic H(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->M:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic I(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->P:Z

    return-void
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->u:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/screen/cw;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t:Lcom/sdgtl/mediahub/spr/screen/cw;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->D:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->w:Z

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

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->k:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->S:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/common/ep;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o:Lcom/sdgtl/mediahub/spr/common/ep;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/common/eq;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->K:Lcom/sdgtl/mediahub/spr/common/eq;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/screen/da;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->G:Lcom/sdgtl/mediahub/spr/screen/da;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Lcom/sdgtl/mediahub/spr/screen/db;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->F:Lcom/sdgtl/mediahub/spr/screen/db;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->A:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->E:Z

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .registers 6

    const v4, 0x7f0a00e5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->Q:Z

    if-nez v0, :cond_23

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->K:Lcom/sdgtl/mediahub/spr/common/eq;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/eq;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->K:Lcom/sdgtl/mediahub/spr/common/eq;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->f:Ljava/lang/String;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->K:Lcom/sdgtl/mediahub/spr/common/eq;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/eq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const v0, 0x7f0a00e7

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_22

    :cond_52
    const v0, 0x7f0a00e6

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_22

    :cond_63
    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->K:Lcom/sdgtl/mediahub/spr/common/eq;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/eq;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->a:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_22
.end method

.method static synthetic b(Landroid/view/View;Landroid/view/View;)V
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

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->R:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->j:J

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->B:Ljava/lang/String;

    return-void
.end method

.method private static c(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz p1, :cond_d

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->L:I

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->i:J

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->Q:Z

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/eq;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->K:Lcom/sdgtl/mediahub/spr/common/eq;

    return-object v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->l:J

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->H:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->S:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m:J

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->I:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->J:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/download/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->T:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->R:I

    return v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->T:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->n(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->U:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->k()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->w:Z

    return v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->v:Z

    return v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->i:J

    return-wide v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/common/ep;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o:Lcom/sdgtl/mediahub/spr/common/ep;

    return-object v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->L:I

    return v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->w:Z

    return-void
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->V:Z

    return v0
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->y:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->k:J

    return-wide v0
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->l:J

    return-wide v0
.end method

.method static synthetic w(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->j:J

    return-wide v0
.end method

.method static synthetic x(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Lcom/sdgtl/mediahub/spr/c/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->U:Lcom/sdgtl/mediahub/spr/c/a;

    return-object v0
.end method

.method static synthetic y(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m:J

    return-wide v0
.end method

.method static synthetic z(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->n:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_7c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    move v0, v3

    :goto_19
    return v0

    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_71

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o:Lcom/sdgtl/mediahub/spr/common/ep;

    if-eqz v0, :cond_30

    move v1, v2

    :goto_26
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o:Lcom/sdgtl/mediahub/spr/common/ep;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4a

    :cond_30
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_7c

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a()Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v0

    if-eqz v0, :cond_7c

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->P:Z

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->finish()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a()Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->finish()V

    move v0, v3

    goto :goto_19

    :cond_4a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o:Lcom/sdgtl/mediahub/spr/common/ep;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->h:Z

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o:Lcom/sdgtl/mediahub/spr/common/ep;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    iput-boolean v2, v0, Lcom/sdgtl/mediahub/spr/common/eq;->h:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t:Lcom/sdgtl/mediahub/spr/screen/cw;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o:Lcom/sdgtl/mediahub/spr/common/ep;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/cw;->a(Lcom/sdgtl/mediahub/spr/common/ep;)V

    move v0, v3

    goto :goto_19

    :cond_6d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    :cond_71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_7c

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_7c
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_19
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_15

    invoke-virtual {p0, v1, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->overridePendingTransition(II)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->P:Z

    if-eqz v0, :cond_15

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Z)V

    :cond_15
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_8c

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    packed-switch p2, :pswitch_data_96

    :cond_b
    :goto_b
    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->H:Ljava/lang/String;

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->I:Ljava/lang/String;

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->J:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/db;->a:Lcom/sdgtl/mediahub/spr/screen/db;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->F:Lcom/sdgtl/mediahub/spr/screen/db;

    goto :goto_7

    :pswitch_16
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->N:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->w:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->F:Lcom/sdgtl/mediahub/spr/screen/db;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/db;->b:Lcom/sdgtl/mediahub/spr/screen/db;

    if-ne v1, v2, :cond_4b

    :cond_39
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->y:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0x16

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->i:J

    goto :goto_b

    :cond_4b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->F:Lcom/sdgtl/mediahub/spr/screen/db;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/db;->d:Lcom/sdgtl/mediahub/spr/screen/db;

    if-ne v1, v2, :cond_76

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->x:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Landroid/view/View;Landroid/view/View;)V

    const-string v1, "device_uid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_nickname"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x18

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->m:J

    goto :goto_b

    :cond_76
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->F:Lcom/sdgtl/mediahub/spr/screen/db;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/db;->c:Lcom/sdgtl/mediahub/spr/screen/db;

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b()V

    goto :goto_b

    :pswitch_80
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->finish()V

    goto :goto_b

    :sswitch_84
    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->finish()V

    goto/16 :goto_7

    nop

    :sswitch_data_8c
    .sparse-switch
        0x3 -> :sswitch_8
        0x7 -> :sswitch_84
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_16
        :pswitch_80
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t:Lcom/sdgtl/mediahub/spr/screen/cw;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o:Lcom/sdgtl/mediahub/spr/common/ep;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t:Lcom/sdgtl/mediahub/spr/screen/cw;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->o:Lcom/sdgtl/mediahub/spr/common/ep;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/cw;->b(Lcom/sdgtl/mediahub/spr/common/ep;)V

    :cond_12
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->setTitle(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->u:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->setContentView(I)V

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->setResult(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_138

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->Q:Z

    :goto_1c
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13c

    const-string v2, "from_signin"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->V:Z

    :goto_2a
    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->x:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->y:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-direct {v0, p0, p0}, Lcom/sdgtl/mediahub/spr/screen/cw;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t:Lcom/sdgtl/mediahub/spr/screen/cw;

    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->p:Landroid/widget/TextView;

    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->q:Landroid/widget/TextView;

    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->r:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->Q:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_71
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->s:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->s:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->s:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->W:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->s:Landroid/widget/ListView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/ch;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/ch;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_108

    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->N:Landroid/widget/TextView;

    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->O:Landroid/widget/Button;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_140

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->V:Z

    if-nez v0, :cond_140

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->O:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_bf
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->O:Landroid/widget/Button;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/ci;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/ci;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->U:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, p0, v3, v6}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->M:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->M:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p0, v0, v4, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;II)V

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/cj;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/cj;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->M:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_fd

    move v0, v1

    :cond_fd
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_108

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->M:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    :cond_108
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->w:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/db;->a:Lcom/sdgtl/mediahub/spr/screen/db;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->F:Lcom/sdgtl/mediahub/spr/screen/db;

    iput-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->H:Ljava/lang/String;

    iput-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->I:Ljava/lang/String;

    iput-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->J:Ljava/lang/String;

    iput-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->K:Lcom/sdgtl/mediahub/spr/common/eq;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->T:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->U:Lcom/sdgtl/mediahub/spr/c/a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_138
    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->Q:Z

    goto/16 :goto_1c

    :cond_13c
    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->V:Z

    goto/16 :goto_2a

    :cond_140
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->O:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_bf
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9

    const/high16 v5, 0x7f0a

    const/4 v4, 0x0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sparse-switch p1, :sswitch_data_174

    :goto_f
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :sswitch_14
    const v1, 0x7f030030

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0d00af

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d00b0

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    const v0, 0x7f0a00dc

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/cd;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/cd;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ce;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ce;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_f

    :sswitch_78
    const-string v0, "device_detail"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;

    const-string v1, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0a00ec

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0a00ed

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0a00ee

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->d:Ljava/lang/String;

    if-eqz v3, :cond_12e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0a00ef

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_12e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0a00f0

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$DeviceDetail;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a00eb

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/cf;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/cf;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/cg;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/cg;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_f

    :sswitch_data_174
    .sparse-switch
        0x17 -> :sswitch_14
        0x1c -> :sswitch_78
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->V:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_17
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_5

    :cond_1c
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_17
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->u:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->S:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->S:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_48

    :goto_9
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    :sswitch_e
    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v2

    sget-object v3, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v2, v3, :cond_2e

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->V:Z

    if-eqz v2, :cond_22

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->setResult(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->finish()V

    goto :goto_d

    :cond_22
    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->searchClose(Z)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->overridePendingTransition(II)V

    :cond_2e
    move v0, v1

    goto :goto_d

    :sswitch_30
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->b:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_9

    :sswitch_36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0164"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_9

    :sswitch_data_48
    .sparse-switch
        0x102002c -> :sswitch_e
        0x7f0d016a -> :sswitch_36
        0x7f0d0173 -> :sswitch_30
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->v:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_a

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->removeDialog(I)V

    :cond_a
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7

    packed-switch p1, :pswitch_data_42

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_34
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->z:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/cc;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/cc;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    nop

    :pswitch_data_42
    .packed-switch 0x17
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->u(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0d0173

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_15
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->A:Lcom/sdgtl/mediahub/spr/ar;

    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->V:Z

    invoke-virtual {p0, p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->v:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.drm.EVENT_PROCESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.drm.EVENT_NOT_PROCESSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->Y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->T:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;Lcom/sdgtl/mediahub/spr/download/a;)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_31
    :goto_31
    return-void

    :cond_32
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->V:Z

    if-nez v0, :cond_5e

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->w:Z

    if-nez v0, :cond_44

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/db;->b:Lcom/sdgtl/mediahub/spr/screen/db;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->F:Lcom/sdgtl/mediahub/spr/screen/db;

    :cond_44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t:Lcom/sdgtl/mediahub/spr/screen/cw;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->t:Lcom/sdgtl/mediahub/spr/screen/cw;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/cw;->notifyDataSetChanged()V

    goto :goto_31

    :cond_5e
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->w:Z

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->y:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->c(Landroid/view/View;Landroid/view/View;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_7c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->N:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->i:J

    goto :goto_54
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
