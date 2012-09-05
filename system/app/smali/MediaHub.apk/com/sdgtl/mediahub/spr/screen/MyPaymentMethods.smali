.class public Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static D:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

.field public static a:[Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:[I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:F

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:Lcom/sdgtl/mediahub/spr/screen/ke;

.field private P:I

.field private Q:I

.field private R:Ljava/lang/String;

.field private S:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private T:Z

.field private U:I

.field private V:Landroid/app/ProgressDialog;

.field private W:Lcom/sdgtl/mediahub/spr/download/a;

.field private X:Lcom/sdgtl/mediahub/spr/c/a;

.field private Y:J

.field private Z:Z

.field private aa:Ljava/lang/String;

.field private ab:Landroid/app/ProgressDialog;

.field private ac:Landroid/app/AlertDialog;

.field private ad:Landroid/widget/AbsListView$OnScrollListener;

.field private ae:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private af:Landroid/view/View$OnTouchListener;

.field private ag:Landroid/content/BroadcastReceiver;

.field private ah:Landroid/content/BroadcastReceiver;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/Handler;

.field private final h:Ljava/lang/String;

.field private i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private j:J

.field private k:J

.field private l:J

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/EditText;

.field private u:Landroid/widget/ListView;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Lcom/sdgtl/mediahub/spr/screen/ka;

.field private x:Lcom/sdgtl/mediahub/spr/common/dm;

.field private y:Ljava/util/ArrayList;

.field private z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->D:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    const-string v0, "method_type_key"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->y:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->z:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_82

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->C:[I

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->E:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->G:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->H:F

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->I:I

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->M:I

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->N:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->a:Lcom/sdgtl/mediahub/spr/screen/ke;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->O:Lcom/sdgtl/mediahub/spr/screen/ke;

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->P:I

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->T:Z

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->Z:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/iw;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/iw;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ad:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/jm;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/jm;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ae:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/jq;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/jq;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->af:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/jr;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/jr;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ju;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ju;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/jv;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/jv;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ag:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/jx;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/jx;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/jy;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/jy;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/jz;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/jz;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ix;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ix;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/iy;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/iy;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ah:Landroid/content/BroadcastReceiver;

    return-void

    nop

    :array_82
    .array-data 0x4
        0xb6t 0x0t 0xat 0x7ft
        0xb7t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic A(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->Y:J

    return-wide v0
.end method

.method static synthetic B(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ab:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method static synthetic C(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->I:I

    return v0
.end method

.method static synthetic D(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->M:I

    return v0
.end method

.method static synthetic E(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->N:Z

    return v0
.end method

.method static synthetic F(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n:I

    return v0
.end method

.method static synthetic G(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->S:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic H(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->T:Z

    return-void
.end method

.method static synthetic I(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ab:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic J(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ac:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic K(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->Z:Z

    return v0
.end method

.method static synthetic L(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c()V

    return-void
.end method

.method static synthetic M(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/c/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->X:Lcom/sdgtl/mediahub/spr/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->L:I

    return v0
.end method

.method static synthetic a(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 7

    const/4 v3, -0x1

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v3

    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_5

    const/4 v0, 0x0

    move v2, v0

    :goto_18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_21

    move v2, v3

    :cond_1f
    move v3, v2

    goto :goto_5

    :cond_21
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    if-ne v1, v0, :cond_25

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_18
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->D:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;ILjava/lang/CharSequence;)Ljava/lang/Boolean;
    .registers 4

    packed-switch p1, :pswitch_data_12

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_8
    return-object v0

    :pswitch_9
    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Ljava/lang/CharSequence;)V

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

.method static synthetic a(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;)V
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

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;F)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->H:F

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->M:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F:Z

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

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->j:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Landroid/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ac:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->V:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Lcom/sdgtl/mediahub/spr/common/dm;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->x:Lcom/sdgtl/mediahub/spr/common/dm;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Lcom/sdgtl/mediahub/spr/screen/ke;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->O:Lcom/sdgtl/mediahub/spr/screen/ke;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->B:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->z:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->G:Z

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/screen/ka;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->w:Lcom/sdgtl/mediahub/spr/screen/ka;

    return-object v0
.end method

.method private static b(Landroid/view/View;Landroid/view/View;)V
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

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->U:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k:J

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ab:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->aa:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->N:Z

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ab:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ab:Landroid/app/ProgressDialog;

    const v1, 0x7f0a006a

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ab:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->I:I

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->l:J

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->R:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F:Z

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->V:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->L:I

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->Y:J

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/download/a;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->W:Lcom/sdgtl/mediahub/spr/download/a;

    return-object v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->J:I

    return-void
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->U:I

    return v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->K:I

    return-void
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->W:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->n(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->X:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->k()Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n:I

    return-void
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->A:I

    return-void
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->Q:I

    return-void
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->E:Z

    return v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->j:J

    return-wide v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->P:I

    return-void
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->x:Lcom/sdgtl/mediahub/spr/common/dm;

    return-object v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F:Z

    return-void
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->w:Lcom/sdgtl/mediahub/spr/screen/ka;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ka;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->K:I

    return v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->q:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k:J

    return-wide v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->Q:I

    return v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->P:I

    return v0
.end method

.method static synthetic w(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->l:J

    return-wide v0
.end method

.method static synthetic x(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->A:I

    return v0
.end method

.method static synthetic y(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->J:I

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->K:I

    return-void
.end method

.method protected clickMyPaymentMethods(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->clickMyPaymentMethods(I)V

    packed-switch p1, :pswitch_data_28

    :goto_6
    return-void

    :pswitch_7
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->c:Lcom/sdgtl/mediahub/spr/screen/ke;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->O:Lcom/sdgtl/mediahub/spr/screen/ke;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_6

    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->showDialog(I)V

    goto :goto_6

    :pswitch_data_28
    .packed-switch 0x7f0d005f
        :pswitch_7
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_23

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    :goto_17
    return v0

    :cond_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_28

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_23
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_17

    :cond_28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_23

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a()Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v1

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->T:Z

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->finish()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a()Lcom/sdgtl/mediahub/spr/screen/MyPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->finish()V

    goto :goto_17
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_15

    invoke-virtual {p0, v1, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->overridePendingTransition(II)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->T:Z

    if-eqz v0, :cond_15

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Z)V

    :cond_15
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_a2

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    packed-switch p2, :pswitch_data_ac

    :cond_b
    :goto_b
    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->P:I

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->R:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->a:Lcom/sdgtl/mediahub/spr/screen/ke;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->O:Lcom/sdgtl/mediahub/spr/screen/ke;

    goto :goto_7

    :pswitch_15
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->r:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->O:Lcom/sdgtl/mediahub/spr/screen/ke;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/ke;->b:Lcom/sdgtl/mediahub/spr/screen/ke;

    if-ne v1, v2, :cond_4a

    :cond_38
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->q:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0x10

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->j:J

    goto :goto_b

    :cond_4a
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->O:Lcom/sdgtl/mediahub/spr/screen/ke;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/ke;->d:Lcom/sdgtl/mediahub/spr/screen/ke;

    if-ne v1, v2, :cond_56

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->showDialog(I)V

    goto :goto_b

    :cond_56
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->O:Lcom/sdgtl/mediahub/spr/screen/ke;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/ke;->e:Lcom/sdgtl/mediahub/spr/screen/ke;

    if-ne v1, v2, :cond_7a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->o:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Landroid/view/View;Landroid/view/View;)V

    const-string v1, "user_payment_method_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->P:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "card_nick_name"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x13

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->l:J

    goto :goto_b

    :cond_7a
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->O:Lcom/sdgtl/mediahub/spr/screen/ke;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/ke;->g:Lcom/sdgtl/mediahub/spr/screen/ke;

    if-ne v1, v2, :cond_b

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c()V

    const-string v1, "redeem_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->Y:J

    goto/16 :goto_b

    :pswitch_96
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->finish()V

    goto/16 :goto_b

    :sswitch_9b
    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->finish()V

    goto/16 :goto_7

    :sswitch_data_a2
    .sparse-switch
        0x3 -> :sswitch_8
        0x7 -> :sswitch_9b
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_15
        :pswitch_96
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->setTitle(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const v4, 0x7f0d004d

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->D:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->setContentView(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_140

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0d00f1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f0d00ed

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->r:Landroid/widget/TextView;

    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->s:Landroid/widget/Button;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_139

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->s:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_5b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->s:Landroid/widget/Button;

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/jb;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/jb;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-direct {v0, p0, p0}, Lcom/sdgtl/mediahub/spr/screen/ka;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->w:Lcom/sdgtl/mediahub/spr/screen/ka;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->w:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ad:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->af:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ae:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/jc;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/jc;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v3, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->X:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, p0, v4, v6}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->S:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->S:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/b/b;->a()I

    move-result v3

    invoke-static {}, Lcom/sdgtl/mediahub/spr/b/b;->b()I

    move-result v4

    invoke-static {p0, v0, v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;II)V

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/jd;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/jd;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->S:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1ad

    move v0, v1

    :goto_d5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_e0

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->S:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v3, v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    :cond_e0
    :goto_e0
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->W:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->X:Lcom/sdgtl/mediahub/spr/c/a;

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->J:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->K:I

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->L:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->a:Lcom/sdgtl/mediahub/spr/screen/ke;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->O:Lcom/sdgtl/mediahub/spr/screen/ke;

    iput v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->P:I

    iput v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->Q:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->R:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ag:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ah:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_138

    const-string v1, "go_to_home"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->Z:Z

    :cond_138
    return-void

    :cond_139
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->s:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5b

    :cond_140
    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0d00f1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f0d00ed

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-direct {v0, p0, p0}, Lcom/sdgtl/mediahub/spr/screen/ka;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->w:Lcom/sdgtl/mediahub/spr/screen/ka;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->w:Lcom/sdgtl/mediahub/spr/screen/ka;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ad:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->af:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ae:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u:Landroid/widget/ListView;

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/iz;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/iz;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->v:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->v:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/ja;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/ja;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_e0

    :cond_1ad
    move v0, v2

    goto/16 :goto_d5
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12

    const v8, 0x7f0a0001

    const/high16 v7, 0x7f0a

    const/4 v2, 0x0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sparse-switch p1, :sswitch_data_ea

    :goto_12
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :sswitch_17
    const v0, 0x7f0a006e

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->C:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a:[Ljava/lang/String;

    move v0, v2

    :goto_28
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->C:[I

    array-length v1, v1

    if-lt v0, v1, :cond_38

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a:[Ljava/lang/String;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/jf;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/jf;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_12

    :cond_38
    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->C:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :sswitch_4b
    const v0, 0x7f0a009e

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a00bb

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/jl;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/jl;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v8}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/jn;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/jn;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_12

    :sswitch_73
    const-string v1, "method_type_key"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const v1, 0x7f030030

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0d00af

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d00b0

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f08001b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    const v0, 0x7f0a00dc

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/jo;

    invoke-direct {v1, p0, v4}, Lcom/sdgtl/mediahub/spr/screen/jo;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v8}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/jp;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/jp;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_12

    nop

    :sswitch_data_ea
    .sparse-switch
        0x0 -> :sswitch_17
        0x15 -> :sswitch_4b
        0x17 -> :sswitch_73
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_11
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_16
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_11
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->D:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ag:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->ah:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    :goto_9
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :sswitch_e
    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v1, v2, :cond_d

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->searchClose(Z)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->overridePendingTransition(II)V

    goto :goto_d

    :sswitch_28
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_9

    :sswitch_2e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0162"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_9

    :sswitch_data_40
    .sparse-switch
        0x102002c -> :sswitch_e
        0x7f0d016a -> :sswitch_2e
        0x7f0d0173 -> :sswitch_28
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->E:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->removeDialog(I)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->removeDialog(I)V

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->removeDialog(I)V

    :cond_13
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7

    packed-switch p1, :pswitch_data_42

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_34
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/je;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/je;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

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

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->E:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->s:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {p0, p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->W:Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;Lcom/sdgtl/mediahub/spr/download/a;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F:Z

    if-nez v0, :cond_25

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ke;->b:Lcom/sdgtl/mediahub/spr/screen/ke;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->O:Lcom/sdgtl/mediahub/spr/screen/ke;

    :cond_25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_16

    :cond_36
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->F:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->q:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Landroid/view/View;Landroid/view/View;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_54

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->r:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_54
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->j:J

    goto :goto_16
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
