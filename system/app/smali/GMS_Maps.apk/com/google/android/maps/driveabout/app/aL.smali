.class public Lcom/google/android/maps/driveabout/app/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/content/DialogInterface$OnCancelListener;

.field private d:Landroid/app/Dialog;

.field private e:Lcom/google/android/maps/driveabout/app/bn;

.field private f:Landroid/app/Dialog;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/app/Dialog;

.field private j:Landroid/app/Dialog;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/app/AlertDialog;

.field private m:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

.field private n:Landroid/widget/CheckBox;

.field private o:Landroid/app/Dialog;

.field private p:Landroid/app/Dialog;

.field private q:Lcom/google/android/maps/driveabout/app/dw;

.field private r:Landroid/app/Dialog;

.field private s:Landroid/app/Dialog;

.field private t:Landroid/app/Dialog;

.field private u:Landroid/app/Dialog;

.field private v:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/al;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/al;->l:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/al;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/al;)Landroid/widget/CheckBox;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->n:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/RecordingLevelsView;)Lcom/google/android/maps/driveabout/app/RecordingLevelsView;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/al;->m:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/al;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/al;)Landroid/app/Dialog;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->v:Landroid/app/Dialog;

    return-object v0
.end method

.method private t()Z
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->h:Landroid/app/Dialog;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private u()Z
    .registers 2

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->e:Lcom/google/android/maps/driveabout/app/bn;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->e:Lcom/google/android/maps/driveabout/app/bn;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_2a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_36
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->l:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_4e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->o:Landroid/app/Dialog;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_5a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dw;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_72
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->r:Landroid/app/Dialog;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->r:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_7e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_8a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_96
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->u:Landroid/app/Dialog;

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->u:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_a2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    :cond_ae
    const/4 v0, 0x1

    :goto_af
    return v0

    :cond_b0
    const/4 v0, 0x0

    goto :goto_af
.end method

.method private v()Landroid/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/aC;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/app/aC;-><init>(Lcom/google/android/maps/driveabout/app/am;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 861
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->t:Landroid/app/Dialog;

    .line 864
    :cond_c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 1006
    const-string v0, "loading"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1007
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    .line 1019
    :goto_a
    return-object v0

    .line 1008
    :cond_b
    const-string v0, "destinations"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1009
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->d:Landroid/app/Dialog;

    goto :goto_a

    .line 1010
    :cond_16
    const-string v0, "layers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1011
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->e:Lcom/google/android/maps/driveabout/app/bn;

    goto :goto_a

    .line 1012
    :cond_21
    const-string v0, "fatal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1013
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->h:Landroid/app/Dialog;

    goto :goto_a

    .line 1014
    :cond_2c
    const-string v0, "exitconfirmation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1015
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->u:Landroid/app/Dialog;

    goto :goto_a

    .line 1016
    :cond_37
    const-string v0, "routeoptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1017
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->s:Landroid/app/Dialog;

    goto :goto_a

    .line 1019
    :cond_42
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()V
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->b()V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->d()V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->g()V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->i()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->k()V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->j()V

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/al;->a(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->n()V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->c()V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->e()V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->f()V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->p()V

    .line 199
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->w()V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->r()V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->s()V

    .line 202
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->u()Z

    move-result v0

    if-nez v0, :cond_7

    .line 230
    :goto_6
    return-void

    .line 211
    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;I)Landroid/text/Spannable;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_17

    .line 213
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 215
    :cond_17
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    .line 216
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 218
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->c:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_36

    .line 219
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 221
    :cond_36
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aC;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/app/aC;-><init>(Lcom/google/android/maps/driveabout/app/am;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/maps/driveabout/app/am;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/am;-><init>(Lcom/google/android/maps/driveabout/app/al;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_6
.end method

.method public a(IF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->m:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    if-eqz v0, :cond_9

    .line 693
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->m:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->setSample(IF)V

    .line 695
    :cond_9
    return-void
.end method

.method public a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    .line 396
    :goto_4
    return-void

    .line 374
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->a()V

    .line 376
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 380
    if-eqz p4, :cond_27

    if-eqz p6, :cond_27

    .line 381
    const v1, 0x7f0d007a

    new-instance v2, Lcom/google/android/maps/driveabout/app/ax;

    invoke-direct {v2, p0, p6}, Lcom/google/android/maps/driveabout/app/ax;-><init>(Lcom/google/android/maps/driveabout/app/al;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    :cond_27
    if-eqz p6, :cond_38

    .line 390
    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    :goto_2c
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->h:Landroid/app/Dialog;

    .line 395
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_4

    .line 392
    :cond_38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_2c
.end method

.method public a(IILandroid/content/DialogInterface$OnClickListener;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_7

    .line 423
    :goto_6
    return-void

    .line 413
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->e()V

    .line 415
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->i:Landroid/app/Dialog;

    .line 422
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_6
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_7

    .line 664
    :goto_6
    return-void

    .line 622
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/al;->a(Z)V

    .line 624
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 625
    const v1, 0x7f040047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 627
    const v0, 0x7f100128

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->m:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    .line 629
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->m:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->setNumSamples(I)V

    .line 631
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 633
    const v0, 0x7f100129

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->n:Landroid/widget/CheckBox;

    .line 634
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->n:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    const-string v3, "RmiMail"

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/al;->n:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 636
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->n:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 639
    :cond_57
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0090

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d007a

    new-instance v2, Lcom/google/android/maps/driveabout/app/aB;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/aB;-><init>(Lcom/google/android/maps/driveabout/app/al;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->l:Landroid/app/AlertDialog;

    .line 652
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->l:Landroid/app/AlertDialog;

    new-instance v1, Lcom/google/android/maps/driveabout/app/an;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/an;-><init>(Lcom/google/android/maps/driveabout/app/al;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 663
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6
.end method

.method a(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 2
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/al;->c:Landroid/content/DialogInterface$OnCancelListener;

    .line 754
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5
    .parameter

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_7

    .line 465
    :goto_6
    return-void

    .line 445
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->f()V

    .line 447
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0072

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0073

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d007d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0079

    new-instance v2, Lcom/google/android/maps/driveabout/app/az;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/az;-><init>(Lcom/google/android/maps/driveabout/app/al;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/ay;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ay;-><init>(Lcom/google/android/maps/driveabout/app/al;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->r:Landroid/app/Dialog;

    .line 464
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->r:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_6
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_7

    .line 580
    :goto_6
    return-void

    .line 554
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->k()V

    .line 556
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 557
    const v1, 0x7f040035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 559
    const v0, 0x7f1000e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->k:Landroid/widget/CheckBox;

    .line 562
    const v0, 0x7f1000e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 563
    const v2, 0x7f0d0031

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 566
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d007c

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d007e

    new-instance v2, Lcom/google/android/maps/driveabout/app/aA;

    invoke-direct {v2, p0, p2}, Lcom/google/android/maps/driveabout/app/aA;-><init>(Lcom/google/android/maps/driveabout/app/al;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->j:Landroid/app/Dialog;

    .line 579
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_6
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_7

    .line 538
    :goto_6
    return-void

    .line 527
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->j()V

    .line 528
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0071

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 533
    if-eqz p3, :cond_2f

    .line 534
    const v1, 0x7f0d0079

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 536
    :cond_2f
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->g:Landroid/app/Dialog;

    .line 537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aD;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 929
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_9

    .line 992
    :goto_8
    return-void

    .line 932
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->s()V

    .line 935
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 936
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 937
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 938
    const v1, 0x7f0d004c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 939
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    const v2, 0x1010041

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 940
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    const-string v2, "HomeAddress"

    invoke-static {v1, v2, v4}, Lt/q;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 942
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 943
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 945
    :cond_3b
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 946
    new-instance v1, Lcom/google/android/maps/driveabout/app/as;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/as;-><init>(Lcom/google/android/maps/driveabout/app/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 960
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d004b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f02010a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0047

    new-instance v3, Lcom/google/android/maps/driveabout/app/at;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/maps/driveabout/app/at;-><init>(Lcom/google/android/maps/driveabout/app/al;Landroid/widget/EditText;Lcom/google/android/maps/driveabout/app/aD;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->v:Landroid/app/Dialog;

    .line 991
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_8
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;IZZZLcom/google/android/maps/driveabout/app/bs;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_7

    .line 489
    :goto_6
    return-void

    .line 484
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->g()V

    .line 485
    new-instance v0, Lcom/google/android/maps/driveabout/app/bn;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bn;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;IZZZLcom/google/android/maps/driveabout/app/bs;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->e:Lcom/google/android/maps/driveabout/app/bn;

    .line 488
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->e:Lcom/google/android/maps/driveabout/app/bn;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bn;->show()V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/app/dA;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_8

    .line 259
    :goto_7
    return-void

    .line 252
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->c()V

    .line 253
    new-instance v0, Lcom/google/android/maps/driveabout/app/dw;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/dw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    .line 254
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aC;

    invoke-direct {v1, v3}, Lcom/google/android/maps/driveabout/app/aC;-><init>(Lcom/google/android/maps/driveabout/app/am;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dw;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    const v2, 0x7f0d00ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f020458

    const v5, 0x7f0d007f

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/dw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 257
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dw;->show()V

    .line 258
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/app/dw;->a(ILcom/google/android/maps/driveabout/app/dA;)V

    goto :goto_7
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->l:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    .line 673
    if-eqz p1, :cond_13

    .line 674
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 678
    :goto_c
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->l:Landroid/app/AlertDialog;

    .line 679
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->m:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    .line 680
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->n:Landroid/widget/CheckBox;

    .line 682
    :cond_12
    return-void

    .line 676
    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_c
.end method

.method public a([Lo/P;ILcom/google/android/maps/driveabout/app/cJ;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 285
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_a

    .line 336
    :goto_9
    return-void

    .line 289
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->d()V

    .line 290
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    const/4 v1, 0x1

    if-ne p2, v1, :cond_97

    .line 292
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 293
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const v3, 0x7f0d009a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    const v5, 0x1030042

    invoke-direct {v3, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 297
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 298
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 299
    const v4, 0x7f0d009c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 300
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    const v5, 0x7f0f0003

    invoke-direct {v1, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 303
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 307
    :goto_5e
    new-instance v1, Lcom/google/android/maps/driveabout/app/ak;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/al;->a:Landroid/content/Context;

    array-length v3, p1

    invoke-direct {v1, v2, p1, v3, v6}, Lcom/google/android/maps/driveabout/app/ak;-><init>(Landroid/content/Context;[Lo/P;IZ)V

    .line 309
    const v2, 0x7f02014f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 310
    new-instance v2, Lcom/google/android/maps/driveabout/app/au;

    invoke-direct {v2, p0, p3}, Lcom/google/android/maps/driveabout/app/au;-><init>(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/cJ;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 317
    new-instance v2, Lcom/google/android/maps/driveabout/app/av;

    invoke-direct {v2, p0, p3, p1}, Lcom/google/android/maps/driveabout/app/av;-><init>(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/cJ;[Lo/P;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    const/4 v1, 0x2

    if-ne p2, v1, :cond_8a

    .line 325
    const v1, 0x7f0d007a

    new-instance v2, Lcom/google/android/maps/driveabout/app/aw;

    invoke-direct {v2, p0, p3}, Lcom/google/android/maps/driveabout/app/aw;-><init>(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/cJ;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    :cond_8a
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->d:Landroid/app/Dialog;

    .line 335
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_9

    .line 305
    :cond_97
    const v1, 0x7f0d009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5e
.end method

.method public a([Lo/b;Lcom/google/android/maps/driveabout/app/aE;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 765
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_9

    .line 821
    :goto_8
    return-void

    .line 768
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->p()V

    .line 770
    invoke-static {}, Lo/c;->a()Lo/c;

    move-result-object v4

    .line 772
    array-length v0, p1

    new-array v5, v0, [Lo/b;

    .line 773
    array-length v0, p1

    invoke-static {p1, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 774
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 775
    :goto_1d
    array-length v2, p1

    if-ge v0, v2, :cond_3c

    .line 776
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lo/b;->b()I

    move-result v2

    invoke-virtual {v4, v2}, Lo/c;->a(I)Lo/e;

    move-result-object v2

    .line 777
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Lo/e;->b()I

    move-result v2

    if-nez v2, :cond_39

    .line 779
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 783
    :cond_3c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [Z

    .line 784
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    move v2, v1

    .line 785
    :goto_49
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_78

    .line 786
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v9, p1, v0

    .line 787
    invoke-virtual {v9}, Lo/b;->c()I

    move-result v0

    if-ne v0, v3, :cond_76

    move v0, v3

    :goto_62
    aput-boolean v0, v7, v2

    .line 788
    invoke-virtual {v9}, Lo/b;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lo/c;->a(I)Lo/e;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Lo/e;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 785
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_49

    :cond_76
    move v0, v1

    .line 787
    goto :goto_62

    .line 792
    :cond_78
    new-instance v0, Lcom/google/android/maps/driveabout/app/ao;

    invoke-direct {v0, p0, v6, v5}, Lcom/google/android/maps/driveabout/app/ao;-><init>(Lcom/google/android/maps/driveabout/app/al;Ljava/util/ArrayList;[Lo/b;)V

    .line 801
    new-instance v1, Lcom/google/android/maps/driveabout/app/ap;

    invoke-direct {v1, p0, p2, v5}, Lcom/google/android/maps/driveabout/app/ap;-><init>(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/aE;[Lo/b;)V

    .line 814
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d00d1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8, v7, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0078

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 819
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->s:Landroid/app/Dialog;

    .line 820
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_8
.end method

.method public b()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 235
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->b:Landroid/app/ProgressDialog;

    .line 238
    :cond_c
    return-void
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5
    .parameter

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_7

    .line 715
    :goto_6
    return-void

    .line 707
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->n()V

    .line 709
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d005d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->o:Landroid/app/Dialog;

    goto :goto_6
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_7

    .line 902
    :goto_6
    return-void

    .line 877
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->r()V

    .line 879
    new-instance v0, Lcom/google/android/maps/driveabout/app/aq;

    invoke-direct {v0, p0, p2}, Lcom/google/android/maps/driveabout/app/aq;-><init>(Lcom/google/android/maps/driveabout/app/al;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 889
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00dd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00de

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0078

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d007a

    new-instance v3, Lcom/google/android/maps/driveabout/app/ar;

    invoke-direct {v3, p0, v0}, Lcom/google/android/maps/driveabout/app/ar;-><init>(Lcom/google/android/maps/driveabout/app/al;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->u:Landroid/app/Dialog;

    .line 901
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->u:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_6
.end method

.method public c()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    if-eqz v0, :cond_11

    .line 263
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dw;->cancel()V

    .line 264
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dw;->dismiss()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->q:Lcom/google/android/maps/driveabout/app/dw;

    .line 267
    :cond_11
    return-void
.end method

.method public c(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5
    .parameter

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-nez v0, :cond_7

    .line 743
    :goto_6
    return-void

    .line 735
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->o()V

    .line 737
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0063

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->p:Landroid/app/Dialog;

    goto :goto_6
.end method

.method public d()V
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 340
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->d:Landroid/app/Dialog;

    .line 343
    :cond_c
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 428
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->i:Landroid/app/Dialog;

    .line 431
    :cond_c
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->r:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 470
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->r:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->r:Landroid/app/Dialog;

    .line 473
    :cond_c
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->e:Lcom/google/android/maps/driveabout/app/bn;

    if-eqz v0, :cond_c

    .line 493
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->e:Lcom/google/android/maps/driveabout/app/bn;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bn;->dismiss()V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->e:Lcom/google/android/maps/driveabout/app/bn;

    .line 496
    :cond_c
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 509
    :cond_c
    :goto_c
    return-void

    .line 503
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->i()V

    .line 504
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d008f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lh/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->f:Landroid/app/Dialog;

    .line 508
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_c
.end method

.method public i()V
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 513
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->f:Landroid/app/Dialog;

    .line 516
    :cond_c
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 542
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->g:Landroid/app/Dialog;

    .line 545
    :cond_c
    return-void
.end method

.method public k()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 583
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    .line 584
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 585
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->j:Landroid/app/Dialog;

    .line 586
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/al;->k:Landroid/widget/CheckBox;

    .line 588
    :cond_e
    return-void
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->k:Landroid/widget/CheckBox;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->k:Landroid/widget/CheckBox;

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

.method public n()V
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->o:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 719
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->o:Landroid/app/Dialog;

    .line 722
    :cond_c
    return-void
.end method

.method public o()V
    .registers 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->p:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 747
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->p:Landroid/app/Dialog;

    .line 750
    :cond_c
    return-void
.end method

.method public p()V
    .registers 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 825
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->s:Landroid/app/Dialog;

    .line 828
    :cond_c
    return-void
.end method

.method public q()V
    .registers 4

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->t()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 857
    :cond_c
    :goto_c
    return-void

    .line 850
    :cond_d
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->w()V

    .line 851
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/al;->v()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->t:Landroid/app/Dialog;

    .line 856
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_c
.end method

.method public r()V
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->u:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 906
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->u:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->u:Landroid/app/Dialog;

    .line 909
    :cond_c
    return-void
.end method

.method public s()V
    .registers 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 996
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/al;->v:Landroid/app/Dialog;

    .line 999
    :cond_c
    return-void
.end method
