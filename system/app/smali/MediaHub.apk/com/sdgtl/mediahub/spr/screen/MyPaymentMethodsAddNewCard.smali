.class public Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;
.super Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;


# static fields
.field private static N:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

.field public static a:[Ljava/lang/String;

.field public static c:[Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:[Ljava/lang/String;

.field public static f:[Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/EditText;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/EditText;

.field private D:Landroid/widget/EditText;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/EditText;

.field private H:Landroid/widget/EditText;

.field private I:Landroid/widget/EditText;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/EditText;

.field private L:Landroid/widget/Button;

.field private M:Landroid/widget/ImageView;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:I

.field private S:Landroid/view/inputmethod/InputMethodManager;

.field private T:I

.field private U:Lcom/sdgtl/mediahub/spr/screen/lb;

.field private V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

.field private W:Z

.field private X:Landroid/content/BroadcastReceiver;

.field public b:[I

.field public g:Landroid/os/Handler;

.field public final h:Landroid/os/Handler;

.field public final i:Landroid/os/Handler;

.field public final j:Landroid/os/Handler;

.field public final k:Landroid/os/Handler;

.field private l:Ljava/util/Calendar;

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private t:Lcom/sdgtl/mediahub/spr/common/en;

.field private u:Lcom/sdgtl/mediahub/spr/screen/ky;

.field private v:J

.field private w:J

.field private x:Landroid/app/ProgressDialog;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->N:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->O:Z

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->P:Z

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->Q:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/lb;->a:Lcom/sdgtl/mediahub/spr/screen/lb;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->U:Lcom/sdgtl/mediahub/spr/screen/lb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->W:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/kf;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/kf;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/kq;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/kq;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->h:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/kr;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/kr;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->i:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ks;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ks;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/kt;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/kt;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->k:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ku;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ku;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->X:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Landroid/widget/EditText;I)I
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_1f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    aput v0, v1, p2

    return v0

    :cond_24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_18

    :cond_29
    if-nez p2, :cond_34

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_34

    move v0, v1

    goto :goto_1f

    :cond_34
    const v0, 0x7f02011e

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    move v0, v2

    goto :goto_1f
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->N:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;ILjava/lang/CharSequence;)Ljava/lang/Boolean;
    .registers 5

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_4e

    :pswitch_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_9
    return-object v0

    :pswitch_a
    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->A:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :pswitch_17
    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :pswitch_1f
    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->C:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :pswitch_2c
    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :pswitch_34
    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->D:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :pswitch_41
    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->G:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :pswitch_data_4e
    .packed-switch 0xfab
        :pswitch_a
        :pswitch_17
        :pswitch_1f
        :pswitch_4
        :pswitch_2c
        :pswitch_34
        :pswitch_41
    .end packed-switch
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->n:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->v:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Lcom/sdgtl/mediahub/spr/common/en;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->t:Lcom/sdgtl/mediahub/spr/common/en;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Ljava/lang/String;Ljava/lang/String;)V

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

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->B:Landroid/widget/ImageView;

    const/4 v2, 0x5

    invoke-static {v1, p2, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/gk;->e(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->o:I

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->o:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->C:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private a(Landroid/widget/EditText;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const v0, 0x7f020172

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->S:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->P:Z

    return v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->s:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->w:J

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->T:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->Q:Z

    return v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->s:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->O:Z

    return v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->v:J

    return-wide v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->Q:Z

    return-void
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->x:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    return-object v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->w:J

    return-wide v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->t:Lcom/sdgtl/mediahub/spr/common/en;

    return-object v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->P:Z

    return-void
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->B:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/screen/ky;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->u:Lcom/sdgtl/mediahub/spr/screen/ky;

    return-object v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b()V

    return-void
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->S:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->K:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Z
    .registers 10

    const/4 v8, 0x3

    const v7, 0x7f020172

    const v6, 0x7f02011e

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->A:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->C:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    iget v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->o:I

    if-eq v1, v4, :cond_88

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    aput v2, v1, v2

    :goto_21
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->D:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->G:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-gtz v1, :cond_a1

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->H:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-gtz v1, :cond_92

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    aput v2, v1, v8

    :goto_3f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->I:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-direct {p0, v1, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;I)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->d:Ljava/lang/String;

    if-eqz v1, :cond_55

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->d:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    :cond_55
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    const/4 v4, 0x5

    aput v2, v1, v4

    :goto_5c
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->K:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-direct {p0, v1, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;I)I

    move-result v1

    if-nez v1, :cond_c5

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->K:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_be

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->R:I

    move v1, v2

    :goto_79
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    const/4 v5, 0x6

    aput v1, v4, v5

    if-ne v1, v2, :cond_82

    add-int/lit8 v0, v0, 0x1

    :cond_82
    :goto_82
    if-gtz v0, :cond_ca

    move v0, v2

    :goto_85
    if-nez v0, :cond_191

    :goto_87
    return v3

    :cond_88
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->C:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    aput v3, v1, v2

    goto :goto_21

    :cond_92
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->G:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->H:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    aput v3, v1, v8

    goto :goto_3f

    :cond_a1
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->G:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->H:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    aput v3, v1, v8

    goto :goto_3f

    :cond_b0
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->J:Landroid/widget/TextView;

    const v4, 0x7f02011c

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    const/4 v4, 0x5

    aput v3, v1, v4

    goto :goto_5c

    :cond_be
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->R:I

    move v1, v3

    goto :goto_79

    :cond_c5
    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->R:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    :cond_ca
    const-string v1, ""

    const/4 v4, -0x1

    move v0, v3

    :goto_ce
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    array-length v5, v5

    if-lt v0, v5, :cond_dd

    move v0, v4

    :cond_d4
    packed-switch v0, :pswitch_data_298

    move-object v0, v1

    :goto_d8
    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Ljava/lang/CharSequence;)V

    move v0, v3

    goto :goto_85

    :cond_dd
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    aget v5, v5, v0

    if-eq v5, v2, :cond_d4

    add-int/lit8 v0, v0, 0x1

    goto :goto_ce

    :pswitch_e6
    const v0, 0x7f0a01a6

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->A:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->A:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_d8

    :pswitch_f8
    const v0, 0x7f0a01a7

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->C:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->C:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_d8

    :pswitch_11c
    const v0, 0x7f0a01a9

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->D:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->D:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_d8

    :pswitch_12e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->G:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->G:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_d8

    :pswitch_140
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->I:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    const v0, 0x7f0a01ae

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->I:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_d8

    :pswitch_152
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    const v0, 0x7f0a01af

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->showDialog(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->J:Landroid/widget/TextView;

    const v4, 0x7f02001a

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_d8

    :pswitch_16d
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->R:I

    if-ne v0, v2, :cond_184

    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->K:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    :goto_17d
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->K:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto/16 :goto_d8

    :cond_184
    const v0, 0x7f0a01aa

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->K:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Landroid/widget/EditText;)Z

    goto :goto_17d

    :cond_191
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    if-eqz v0, :cond_198

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    :cond_198
    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->A:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->C:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->n:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->D:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->E:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->F:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->G:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->H:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->I:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->K:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25a

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/lb;->b:Lcom/sdgtl/mediahub/spr/screen/lb;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->U:Lcom/sdgtl/mediahub/spr/screen/lb;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    iget-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->W:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0, v8}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_257
    move v3, v2

    goto/16 :goto_87

    :cond_25a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->S:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->K:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->Q:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->x:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->x:Landroid/app/ProgressDialog;

    const v1, 0x7f0a006a

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->x:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "card_id"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->s:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x12

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->v:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    goto :goto_257

    nop

    :pswitch_data_298
    .packed-switch 0x0
        :pswitch_e6
        :pswitch_f8
        :pswitch_11c
        :pswitch_12e
        :pswitch_140
        :pswitch_152
        :pswitch_16d
    .end packed-switch
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->E:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->F:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->J:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->x:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_17
    return v0

    :cond_18
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_17
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_42

    :cond_6
    :goto_6
    return-void

    :sswitch_7
    packed-switch p2, :pswitch_data_4c

    :cond_a
    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/lb;->a:Lcom/sdgtl/mediahub/spr/screen/lb;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->U:Lcom/sdgtl/mediahub/spr/screen/lb;

    goto :goto_6

    :pswitch_12
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->P:Z

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->U:Lcom/sdgtl/mediahub/spr/screen/lb;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/lb;->b:Lcom/sdgtl/mediahub/spr/screen/lb;

    if-ne v0, v1, :cond_a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "card_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->s:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x12

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->v:J

    goto :goto_a

    :pswitch_37
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->finish()V

    goto :goto_a

    :sswitch_3b
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->finish()V

    goto :goto_6

    nop

    :sswitch_data_42
    .sparse-switch
        0x3 -> :sswitch_7
        0x7 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_37
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/16 v7, 0xa

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->s:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->u:Lcom/sdgtl/mediahub/spr/screen/ky;

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->W:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v2, "go_to_home"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->W:Z

    :cond_22
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "01"

    aput-object v2, v0, v1

    const-string v2, "02"

    aput-object v2, v0, v4

    const-string v2, "03"

    aput-object v2, v0, v5

    const/4 v2, 0x3

    const-string v3, "04"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "05"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "06"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "07"

    aput-object v3, v0, v2

    const-string v2, "08"

    aput-object v2, v0, v6

    const/16 v2, 0x8

    const-string v3, "09"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "10"

    aput-object v3, v0, v2

    const-string v2, "11"

    aput-object v2, v0, v7

    const/16 v2, 0xb

    const-string v3, "12"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->c:[Ljava/lang/String;

    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "AK"

    aput-object v2, v0, v1

    const-string v2, "AL"

    aput-object v2, v0, v4

    const-string v2, "AR"

    aput-object v2, v0, v5

    const/4 v2, 0x3

    const-string v3, "AZ"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "CA"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "CO"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "CT"

    aput-object v3, v0, v2

    const-string v2, "DC"

    aput-object v2, v0, v6

    const/16 v2, 0x8

    const-string v3, "DE"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "FL"

    aput-object v3, v0, v2

    const-string v2, "GA"

    aput-object v2, v0, v7

    const/16 v2, 0xb

    const-string v3, "HI"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "IA"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "ID"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "IL"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "IN"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "KS"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "KY"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "LA"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "MA"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "MD"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "ME"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "MI"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "MN"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "MO"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "MS"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "MT"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "NC"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "ND"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "NE"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "NH"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "NJ"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "NM"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "NV"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "NY"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "OH"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "OK"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "OR"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "PA"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "PR"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "RI"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "SC"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "SD"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "TN"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "TX"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "UT"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string v3, "VA"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "VT"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string v3, "WA"

    aput-object v3, v0, v2

    const/16 v2, 0x31

    const-string v3, "WI"

    aput-object v3, v0, v2

    const/16 v2, 0x32

    const-string v3, "WV"

    aput-object v3, v0, v2

    const/16 v2, 0x33

    const-string v3, "WY"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->e:[Ljava/lang/String;

    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Alaska"

    aput-object v2, v0, v1

    const-string v2, "Alabama"

    aput-object v2, v0, v4

    const-string v2, "Arkansas"

    aput-object v2, v0, v5

    const/4 v2, 0x3

    const-string v3, "Arizona"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "California"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "Colorado"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "Connecticut"

    aput-object v3, v0, v2

    const-string v2, "District of Columbia"

    aput-object v2, v0, v6

    const/16 v2, 0x8

    const-string v3, "Delaware"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "Florida"

    aput-object v3, v0, v2

    const-string v2, "Georgia"

    aput-object v2, v0, v7

    const/16 v2, 0xb

    const-string v3, "Hawaii"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "Iowa"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "Idaho"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "Illinois"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "Indiana"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "Kansas"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "Kentucky"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "Louisiana"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "Massachusetts"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "Maryland"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "Maine"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "Michigan"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "Minnesota"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "Missouri"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "Mississippi"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "Montana"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "North Carolina"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "North Dakota"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "Nebraska"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "New Hampshire"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "New Jersey"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "New Mexico"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "Nevada"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "New York"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "Ohio"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "Oklahoma"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "Oregon"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "Pennsylvania"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "Puerto Rico"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "Rhode Island"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "South Carolina"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "South Dakota"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "Tennessee"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "Texas"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "Utah"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string v3, "Virginia"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "Vermont"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string v3, "Washington"

    aput-object v3, v0, v2

    const/16 v2, 0x31

    const-string v3, "Wisconsin"

    aput-object v3, v0, v2

    const/16 v2, 0x32

    const-string v3, "West Virginia"

    aput-object v3, v0, v2

    const/16 v2, 0x33

    const-string v3, "Wyoming"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->f:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->l:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->m:I

    new-array v0, v7, [Ljava/lang/String;

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a:[Ljava/lang/String;

    move v0, v1

    :goto_2d5
    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_456

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    move v0, v1

    :goto_2df
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    array-length v2, v2

    if-lt v0, v2, :cond_465

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->R:I

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->N:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/lb;->a:Lcom/sdgtl/mediahub/spr/screen/lb;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->U:Lcom/sdgtl/mediahub/spr/screen/lb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->V:Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->S:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->P:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->setContentView(I)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->x:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->x:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kv;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/kv;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ky;

    invoke-direct {v0, p0, p0}, Lcom/sdgtl/mediahub/spr/screen/ky;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->u:Lcom/sdgtl/mediahub/spr/screen/ky;

    const v0, 0x7f0d00d1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->A:Landroid/widget/EditText;

    const v0, 0x7f0d00d4

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->B:Landroid/widget/ImageView;

    const v0, 0x7f0d00d2

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->y:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->y:Landroid/widget/RelativeLayout;

    const v2, 0x7f0d00d3

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->z:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->z:Landroid/widget/ImageView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kw;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/kw;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->C:Landroid/widget/EditText;

    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->D:Landroid/widget/EditText;

    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->E:Landroid/widget/TextView;

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->l:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->E:Landroid/widget/TextView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kx;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/kx;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->F:Landroid/widget/TextView;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->F:Landroid/widget/TextView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kg;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/kg;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->G:Landroid/widget/EditText;

    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->H:Landroid/widget/EditText;

    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->I:Landroid/widget/EditText;

    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->K:Landroid/widget/EditText;

    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->J:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->J:Landroid/widget/TextView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kh;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/kh;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_46d

    const v0, 0x7f0d00e1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->M:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->M:Landroid/widget/ImageView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/ki;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/ki;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kj;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/kj;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_42c
    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kl;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/kl;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    aput-object v2, v0, v1

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->D:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->P:Z

    if-nez v0, :cond_44b

    const-string v0, "001001"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->p:Ljava/lang/String;

    :cond_44b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->r:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->setResult(I)V

    return-void

    :cond_456
    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a:[Ljava/lang/String;

    iget v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->m:I

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2d5

    :cond_465
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b:[I

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2df

    :cond_46d
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->L:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->L:Landroid/widget/Button;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/kk;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/kk;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_42c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7

    const/4 v4, 0x0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_7c

    :goto_9
    :pswitch_9
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->u:Lcom/sdgtl/mediahub/spr/screen/ky;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/km;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/km;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f0a00b6

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    :pswitch_3f
    const v0, 0x7f0a00b9

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->c:[Ljava/lang/String;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/kn;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/kn;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    :pswitch_53
    const v0, 0x7f0a00b8

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a:[Ljava/lang/String;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ko;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ko;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    :pswitch_67
    const v0, 0x7f0a009b

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->f:[Ljava/lang/String;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/kp;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/kp;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    nop

    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_e
        :pswitch_53
        :pswitch_3f
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_67
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->N:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->O:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_16

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->removeDialog(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->removeDialog(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->removeDialog(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->removeDialog(I)V

    :cond_16
    return-void
.end method

.method protected onResume()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->O:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->s:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->W:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_e

    :cond_28
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->P:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b()V

    goto :goto_e
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onStop()V

    return-void
.end method
