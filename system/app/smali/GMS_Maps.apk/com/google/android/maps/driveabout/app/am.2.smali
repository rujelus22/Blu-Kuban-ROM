.class public Lcom/google/android/maps/driveabout/app/am;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/content/DialogInterface$OnCancelListener;

.field private d:Landroid/content/DialogInterface$OnKeyListener;

.field private e:Landroid/app/Dialog;

.field private f:Lcom/google/android/maps/driveabout/app/bk;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/app/Dialog;

.field private j:Landroid/app/Dialog;

.field private k:Landroid/app/Dialog;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/app/AlertDialog;

.field private n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/app/Dialog;

.field private q:Landroid/app/Dialog;

.field private r:Lcom/google/android/maps/driveabout/app/dH;

.field private s:Landroid/app/Dialog;

.field private t:Landroid/app/Dialog;

.field private u:Landroid/app/Dialog;

.field private v:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/am;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/am;->m:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/am;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/am;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->o:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/RecordingLevelsView;)Lcom/google/android/maps/driveabout/app/RecordingLevelsView;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/am;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/am;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    return-object v0
.end method

.method private r()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->i:Landroid/app/Dialog;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private s()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->f:Lcom/google/android/maps/driveabout/app/bk;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->f:Lcom/google/android/maps/driveabout/app/bk;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bk;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_2a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_36
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->m:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_4e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->p:Landroid/app/Dialog;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_5a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dH;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_72
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_7e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_8a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->u:Landroid/app/Dialog;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->u:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_96
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a4

    :cond_a2
    const/4 v0, 0x1

    :goto_a3
    return v0

    :cond_a4
    const/4 v0, 0x0

    goto :goto_a3
.end method

.method private t()Landroid/app/AlertDialog$Builder;
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/aB;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/app/aB;-><init>(Lcom/google/android/maps/driveabout/app/an;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->u:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->u:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->u:Landroid/app/Dialog;

    :cond_c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/app/Dialog;
    .registers 3

    const-string v0, "loading"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "destinations"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->e:Landroid/app/Dialog;

    goto :goto_a

    :cond_16
    const-string v0, "layers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->f:Lcom/google/android/maps/driveabout/app/bk;

    goto :goto_a

    :cond_21
    const-string v0, "fatal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->i:Landroid/app/Dialog;

    goto :goto_a

    :cond_2c
    const-string v0, "exitconfirmation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->v:Landroid/app/Dialog;

    goto :goto_a

    :cond_37
    const-string v0, "routeoptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->t:Landroid/app/Dialog;

    goto :goto_a

    :cond_42
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->b()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->d()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->g()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->i()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->k()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->j()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/am;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->m()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->c()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->e()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->f()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->o()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->u()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->q()V

    return-void
.end method

.method public a(I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->s()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;I)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_17
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->c:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->d:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->d:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_41
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/maps/driveabout/app/an;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/an;-><init>(Lcom/google/android/maps/driveabout/app/am;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_6

    :cond_51
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aB;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/app/aB;-><init>(Lcom/google/android/maps/driveabout/app/an;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_41
.end method

.method public a(IF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a(IF)V

    :cond_9
    return-void
.end method

.method public a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p4, :cond_27

    if-eqz p6, :cond_27

    const v1, 0x7f0b006d

    new-instance v2, Lcom/google/android/maps/driveabout/app/aw;

    invoke-direct {v2, p0, p6}, Lcom/google/android/maps/driveabout/app/aw;-><init>(Lcom/google/android/maps/driveabout/app/am;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_27
    if-eqz p6, :cond_38

    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :goto_2c
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->i:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_4

    :cond_38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_2c
.end method

.method public a(IILandroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->e()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->j:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_6
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 9

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/am;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f00fe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a(I)V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_57

    const v0, 0x7f0f00ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->o:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->o:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    const-string v3, "RmiMail"

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/am;->o:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->o:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_57
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0083

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006d

    new-instance v2, Lcom/google/android/maps/driveabout/app/aA;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/aA;-><init>(Lcom/google/android/maps/driveabout/app/am;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->m:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->m:Landroid/app/AlertDialog;

    new-instance v1, Lcom/google/android/maps/driveabout/app/ao;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ao;-><init>(Lcom/google/android/maps/driveabout/app/am;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6
.end method

.method a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/am;->c:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/am;->d:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->f()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006c

    new-instance v2, Lcom/google/android/maps/driveabout/app/ay;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/ay;-><init>(Lcom/google/android/maps/driveabout/app/am;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/ax;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ax;-><init>(Lcom/google/android/maps/driveabout/app/am;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->s:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_6
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->k()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f00c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->l:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0071

    new-instance v2, Lcom/google/android/maps/driveabout/app/az;

    invoke-direct {v2, p0, p2}, Lcom/google/android/maps/driveabout/app/az;-><init>(Lcom/google/android/maps/driveabout/app/am;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->k:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_6
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->j()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p3, :cond_2f

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2f
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;IZZLcom/google/android/maps/driveabout/app/bo;)V
    .registers 15

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->g()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bk;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/bk;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;IZZLcom/google/android/maps/driveabout/app/bo;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->f:Lcom/google/android/maps/driveabout/app/bk;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->f:Lcom/google/android/maps/driveabout/app/bk;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bk;->show()V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/app/dL;)V
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->c()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dH;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/dH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aB;

    invoke-direct {v1, v3}, Lcom/google/android/maps/driveabout/app/aB;-><init>(Lcom/google/android/maps/driveabout/app/an;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dH;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    const v2, 0x7f0b00c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0203b5

    const v5, 0x7f0b0072

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/dH;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dH;->show()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/app/dH;->a(ILcom/google/android/maps/driveabout/app/dL;)V

    goto :goto_7
.end method

.method public a(Z)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->m:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :goto_c
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->m:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->o:Landroid/widget/CheckBox;

    :cond_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_c
.end method

.method public a([Lu/P;ILcom/google/android/maps/driveabout/app/cV;)V
    .registers 12

    const/16 v7, 0x21

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->d()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_97

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const v3, 0x7f0b008c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    const v5, 0x1030042

    invoke-direct {v3, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const v4, 0x7f0b008e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    const v5, 0x7f0d0003

    invoke-direct {v1, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_5e
    new-instance v1, Lcom/google/android/maps/driveabout/app/al;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/am;->a:Landroid/content/Context;

    array-length v3, p1

    invoke-direct {v1, v2, p1, v3, v6}, Lcom/google/android/maps/driveabout/app/al;-><init>(Landroid/content/Context;[Lu/P;IZ)V

    const v2, 0x7f02012e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/google/android/maps/driveabout/app/at;

    invoke-direct {v2, p0, p3}, Lcom/google/android/maps/driveabout/app/at;-><init>(Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/cV;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/google/android/maps/driveabout/app/au;

    invoke-direct {v2, p0, p3, p1}, Lcom/google/android/maps/driveabout/app/au;-><init>(Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/cV;[Lu/P;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_8a

    const v1, 0x7f0b006d

    new-instance v2, Lcom/google/android/maps/driveabout/app/av;

    invoke-direct {v2, p0, p3}, Lcom/google/android/maps/driveabout/app/av;-><init>(Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/cV;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_8a
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->e:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_9

    :cond_97
    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5e
.end method

.method public a([Lu/b;Lcom/google/android/maps/driveabout/app/aC;)V
    .registers 13

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->o()V

    invoke-static {}, Lu/c;->a()Lu/c;

    move-result-object v4

    array-length v0, p1

    new-array v5, v0, [Lu/b;

    array-length v0, p1

    invoke-static {p1, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1d
    array-length v2, p1

    if-ge v0, v2, :cond_3c

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lu/b;->b()I

    move-result v2

    invoke-virtual {v4, v2}, Lu/c;->a(I)Lu/e;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Lu/e;->b()I

    move-result v2

    if-nez v2, :cond_39

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_3c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    move v2, v1

    :goto_49
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_78

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v9, p1, v0

    invoke-virtual {v9}, Lu/b;->c()I

    move-result v0

    if-ne v0, v3, :cond_76

    move v0, v3

    :goto_62
    aput-boolean v0, v7, v2

    invoke-virtual {v9}, Lu/b;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lu/c;->a(I)Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_49

    :cond_76
    move v0, v1

    goto :goto_62

    :cond_78
    new-instance v0, Lcom/google/android/maps/driveabout/app/ap;

    invoke-direct {v0, p0, v6, v5}, Lcom/google/android/maps/driveabout/app/ap;-><init>(Lcom/google/android/maps/driveabout/app/am;Ljava/util/ArrayList;[Lu/b;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/aq;

    invoke-direct {v1, p0, p2, v5}, Lcom/google/android/maps/driveabout/app/aq;-><init>(Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/aC;[Lu/b;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00c3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8, v7, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b006b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->t:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_8
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->b:Landroid/app/ProgressDialog;

    :cond_c
    return-void
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->m()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->p:Landroid/app/Dialog;

    goto :goto_6
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->q()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ar;

    invoke-direct {v0, p0, p2}, Lcom/google/android/maps/driveabout/app/ar;-><init>(Lcom/google/android/maps/driveabout/app/am;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00d0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00d1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b006b

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b006d

    new-instance v3, Lcom/google/android/maps/driveabout/app/as;

    invoke-direct {v3, p0, v0}, Lcom/google/android/maps/driveabout/app/as;-><init>(Lcom/google/android/maps/driveabout/app/am;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->v:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_6
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dH;->cancel()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dH;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->r:Lcom/google/android/maps/driveabout/app/dH;

    :cond_11
    return-void
.end method

.method public c(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->n()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->q:Landroid/app/Dialog;

    goto :goto_6
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->e:Landroid/app/Dialog;

    :cond_c
    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->j:Landroid/app/Dialog;

    :cond_c
    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->s:Landroid/app/Dialog;

    :cond_c
    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->f:Lcom/google/android/maps/driveabout/app/bk;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->f:Lcom/google/android/maps/driveabout/app/bk;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bk;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->f:Lcom/google/android/maps/driveabout/app/bk;

    :cond_c
    return-void
.end method

.method public h()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/am;->i()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0082

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Ln/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->g:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_c
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->g:Landroid/app/Dialog;

    :cond_c
    return-void
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->h:Landroid/app/Dialog;

    :cond_c
    return-void
.end method

.method public k()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->k:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/am;->l:Landroid/widget/CheckBox;

    :cond_e
    return-void
.end method

.method public l()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->l:Landroid/widget/CheckBox;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public m()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->p:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->p:Landroid/app/Dialog;

    :cond_c
    return-void
.end method

.method public n()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->q:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->q:Landroid/app/Dialog;

    :cond_c
    return-void
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->t:Landroid/app/Dialog;

    :cond_c
    return-void
.end method

.method public p()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->r()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->u()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/am;->t()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->u:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->u:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_c
.end method

.method public q()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->v:Landroid/app/Dialog;

    :cond_c
    return-void
.end method
