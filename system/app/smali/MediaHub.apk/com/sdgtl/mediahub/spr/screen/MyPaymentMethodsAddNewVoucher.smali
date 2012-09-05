.class public Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;
.super Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;


# static fields
.field private static l:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;


# instance fields
.field public a:Landroid/os/Handler;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field private f:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private g:J

.field private h:Landroid/app/ProgressDialog;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/ImageView;

.field private k:Z

.field private m:Lcom/sdgtl/mediahub/spr/screen/lm;

.field private n:Z

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->l:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->k:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/lm;->a:Lcom/sdgtl/mediahub/spr/screen/lm;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->m:Lcom/sdgtl/mediahub/spr/screen/lm;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->n:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lc;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/lc;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/le;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/le;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lf;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/lf;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lg;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/lg;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lh;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/lh;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/li;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/li;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/lj;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/lj;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->p:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->l:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;ILjava/lang/CharSequence;)Ljava/lang/Boolean;
    .registers 4

    packed-switch p1, :pswitch_data_18

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_8
    return-object v0

    :pswitch_9
    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->i:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a(Landroid/widget/EditText;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    nop

    :pswitch_data_18
    .packed-switch 0xfb5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->g:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a(Ljava/lang/CharSequence;)V

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

.method private a(Landroid/widget/EditText;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_1c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->i:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a(Landroid/widget/EditText;)Z

    const v0, 0x7f0a01ab

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a(Ljava/lang/CharSequence;)V

    move v0, v1

    :goto_2c
    if-nez v0, :cond_32

    move v0, v1

    :goto_2f
    return v0

    :cond_30
    move v0, v2

    goto :goto_2c

    :cond_32
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/lm;->b:Lcom/sdgtl/mediahub/spr/screen/lm;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->m:Lcom/sdgtl/mediahub/spr/screen/lm;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    iget-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->n:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x3

    invoke-static {p0, v1, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_4e
    move v0, v2

    goto :goto_2f

    :cond_50
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->b()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "redeem_id"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->f:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->g:J

    goto :goto_4e
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->f:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->h:Landroid/app/ProgressDialog;

    const v1, 0x7f0a006a

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    return-void
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->j:Landroid/widget/ImageView;

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

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->h:Landroid/app/ProgressDialog;

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
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/lm;->a:Lcom/sdgtl/mediahub/spr/screen/lm;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->m:Lcom/sdgtl/mediahub/spr/screen/lm;

    goto :goto_6

    :pswitch_f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->m:Lcom/sdgtl/mediahub/spr/screen/lm;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/lm;->b:Lcom/sdgtl/mediahub/spr/screen/lm;

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->b()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "redeem_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->f:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->g:J

    goto :goto_a

    :pswitch_37
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->finish()V

    goto :goto_a

    :sswitch_3b
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->finish()V

    goto :goto_6

    nop

    :sswitch_data_42
    .sparse-switch
        0x3 -> :sswitch_7
        0x7 -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_37
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->f:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->n:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, "go_to_home"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->n:Z

    :cond_1b
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/lm;->a:Lcom/sdgtl/mediahub/spr/screen/lm;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->m:Lcom/sdgtl/mediahub/spr/screen/lm;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->l:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->setContentView(I)V

    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->i:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ll;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ll;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_87

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->h:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->h:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ld;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ld;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const v0, 0x7f0d00e6

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->j:Landroid/widget/ImageView;

    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->j:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_87
    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->setResult(I)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_2c

    :goto_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_d
    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a004a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f0a

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/lk;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/lk;-><init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    nop

    :pswitch_data_2c
    .packed-switch 0x16
        :pswitch_d
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->l:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->k:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->k:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->f:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "go_to_home"

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_e
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHBaseActivity;->onStop()V

    return-void
.end method
