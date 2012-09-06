.class public Lcom/google/googlenav/ui/view/dialog/bO;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements Laz/m;


# static fields
.field private static final s:Laz/f;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/ju;

.field private final b:Laz/a;

.field private c:Lcom/google/googlenav/ui/view/dialog/bS;

.field private d:Landroid/view/LayoutInflater;

.field private volatile e:I

.field private m:Ljava/lang/String;

.field private volatile n:I

.field private volatile o:I

.field private final p:Ljava/text/DateFormat;

.field private q:I

.field private r:Laz/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v0, Laz/f;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Laz/f;-><init>(Lcom/google/googlenav/prefetch/android/y;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    sput-object v0, Lcom/google/googlenav/ui/view/dialog/bO;->s:Laz/f;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    const v0, 0x7f0f0018

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->q:I

    .line 105
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bO;->a:Lcom/google/googlenav/ui/wizard/ju;

    .line 106
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->b:Laz/a;

    .line 107
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bO;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->p:Ljava/text/DateFormat;

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/f;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->r:Laz/f;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bO;Lcom/google/googlenav/ui/view/dialog/bS;)Lcom/google/googlenav/ui/view/dialog/bS;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bO;->c:Lcom/google/googlenav/ui/view/dialog/bS;

    return-object p1
.end method

.method static synthetic a(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/googlenav/ui/view/dialog/bO;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Laz/f;)V
    .registers 8
    .parameter

    .prologue
    .line 489
    invoke-virtual {p1}, Laz/f;->e()Lcom/google/googlenav/prefetch/android/y;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/E;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/E;->d()I

    move-result v1

    .line 490
    invoke-virtual {p1}, Laz/f;->e()Lcom/google/googlenav/prefetch/android/y;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/E;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/E;->e()I

    move-result v2

    .line 491
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bO;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v3

    .line 492
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->G()I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget v0, Lcom/google/googlenav/ui/bn;->c:I

    :goto_32
    add-int/2addr v0, v4

    .line 495
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/view/e;->d()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/android/ButtonContainer;->d()Lcom/google/googlenav/ui/android/ab;

    move-result-object v4

    .line 497
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/googlenav/ui/android/ab;->a()I

    move-result v4

    add-int/2addr v4, v5

    .line 499
    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v0, v4}, Lat/u;->a(IIII)Lat/Y;

    move-result-object v2

    .line 501
    invoke-virtual {p1}, Laz/f;->e()Lcom/google/googlenav/prefetch/android/y;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/E;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/E;->f()Lat/B;

    move-result-object v1

    .line 505
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 506
    new-instance v0, Lat/B;

    invoke-virtual {v1, v2}, Lat/B;->a(Lat/Y;)I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/bn;->G()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2}, Lat/B;->b(Lat/Y;)I

    move-result v1

    invoke-virtual {v2}, Lat/Y;->a()I

    move-result v5

    invoke-direct {v0, v4, v1, v5}, Lat/B;-><init>(III)V

    .line 514
    :goto_84
    sget-object v1, Lcom/google/googlenav/ui/view/dialog/bO;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->D()V

    .line 516
    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    invoke-virtual {p1}, Laz/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, LaM/am;->a(Lat/B;Lat/Y;Ljava/lang/String;)LaM/aL;

    .line 520
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_af

    .line 521
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/C;->a()V

    .line 523
    :cond_af
    return-void

    .line 492
    :cond_b0
    const/4 v0, 0x0

    goto :goto_32

    :cond_b2
    move-object v0, v1

    goto :goto_84
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bO;Laz/f;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bO;->a(Laz/f;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/bO;[Laz/f;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bO;->a([Laz/f;)V

    return-void
.end method

.method private a([Laz/f;)V
    .registers 6
    .parameter

    .prologue
    .line 184
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_e

    aget-object v2, p1, v0

    .line 185
    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/bO;->c:Lcom/google/googlenav/ui/view/dialog/bS;

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/view/dialog/bS;->add(Ljava/lang/Object;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 187
    :cond_e
    return-void
.end method

.method private b(Laz/f;)Landroid/app/AlertDialog;
    .registers 6
    .parameter

    .prologue
    .line 536
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bO;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 537
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bO;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02020c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x34c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/bQ;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/googlenav/ui/view/dialog/bQ;-><init>(Lcom/google/googlenav/ui/view/dialog/bO;Landroid/widget/EditText;Laz/f;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 556
    invoke-virtual {p1}, Laz/f;->d()Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 558
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 559
    return-object v1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/bO;Laz/f;)Landroid/app/AlertDialog;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bO;->b(Laz/f;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/ui/view/dialog/bS;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->c:Lcom/google/googlenav/ui/view/dialog/bS;

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 v1, p0, 0xa

    div-int/lit16 v1, v1, 0x400

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Laz/f;)Landroid/app/AlertDialog;
    .registers 6
    .parameter

    .prologue
    .line 563
    invoke-virtual {p1}, Laz/f;->a()I

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    .line 565
    :goto_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bO;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02020c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v0, :cond_44

    const/16 v1, 0x337

    :goto_1b
    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x31b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x61d

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/view/dialog/bR;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/googlenav/ui/view/dialog/bR;-><init>(Lcom/google/googlenav/ui/view/dialog/bO;ZLaz/f;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 563
    :cond_42
    const/4 v0, 0x0

    goto :goto_7

    .line 565
    :cond_44
    const/16 v1, 0x330

    goto :goto_1b
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/bO;Laz/f;)Landroid/app/AlertDialog;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bO;->c(Laz/f;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/bO;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private c(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_40

    .line 215
    const-string v0, ""

    :goto_5
    return-object v0

    .line 207
    :pswitch_6
    const/16 v0, 0x359

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 209
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/bO;->n:I

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/bO;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/bO;->o:I

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/bO;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 211
    :pswitch_31
    const/16 v0, 0x356

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 213
    :pswitch_38
    const/16 v0, 0x358

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 205
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_31
        :pswitch_38
    .end packed-switch
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->a:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/bO;->m()Lcom/google/googlenav/android/Y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/view/dialog/bO;)Ljava/text/DateFormat;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->p:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/a;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->b:Laz/a;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/ui/view/dialog/bO;)I
    .registers 2
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->e:I

    return v0
.end method

.method static synthetic i()Laz/f;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bO;->s:Laz/f;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/ui/view/dialog/bO;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/ui/view/dialog/bO;)I
    .registers 2
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->q:I

    return v0
.end method

.method static synthetic l()Lcom/google/googlenav/android/BaseMapsActivity;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bO;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    return-object v0
.end method

.method private m()Lcom/google/googlenav/android/Y;
    .registers 2

    .prologue
    .line 111
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bO;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public K_()V
    .registers 2

    .prologue
    .line 528
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 529
    sget-object v0, Lcom/google/googlenav/ui/view/dialog/bO;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->p()V

    .line 532
    :cond_1b
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/bO;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->d:Landroid/view/LayoutInflater;

    .line 179
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f040177

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->i:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->i:Landroid/view/View;

    return-object v0
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onOfflineDataUpdate(Laz/l;)V
    .registers 5
    .parameter

    .prologue
    .line 116
    invoke-virtual {p1}, Laz/l;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 117
    invoke-virtual {p1}, Laz/l;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->q:I

    .line 119
    :cond_c
    invoke-virtual {p1}, Laz/l;->j()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 120
    invoke-virtual {p1}, Laz/l;->b()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->e:I

    .line 121
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->e:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/bO;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->m:Ljava/lang/String;

    .line 123
    :cond_20
    invoke-virtual {p1}, Laz/l;->m()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 124
    invoke-virtual {p1}, Laz/l;->e()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->o:I

    .line 126
    :cond_2c
    invoke-virtual {p1}, Laz/l;->l()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 127
    invoke-virtual {p1}, Laz/l;->d()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->n:I

    .line 129
    :cond_38
    invoke-virtual {p1}, Laz/l;->o()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 130
    invoke-virtual {p1}, Laz/l;->g()Laz/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->r:Laz/f;

    .line 132
    :cond_44
    invoke-virtual {p1}, Laz/l;->i()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 133
    invoke-virtual {p1}, Laz/l;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bO;->m:Ljava/lang/String;

    .line 139
    :cond_50
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/bO;->m()Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bP;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/dialog/bP;-><init>(Lcom/google/googlenav/ui/view/dialog/bO;Laz/l;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 174
    return-void
.end method
