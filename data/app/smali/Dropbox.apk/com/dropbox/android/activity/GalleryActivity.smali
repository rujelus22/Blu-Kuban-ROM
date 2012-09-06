.class public Lcom/dropbox/android/activity/GalleryActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/D;
.implements Lcom/dropbox/android/activity/E;
.implements Lcom/dropbox/android/activity/bj;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field a:Lcom/dropbox/android/widget/GalleryView;

.field protected b:Lcom/dropbox/android/activity/delegate/x;

.field protected c:F

.field protected d:[F

.field protected e:Landroid/database/Cursor;

.field private h:I

.field private i:Z

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/View;

.field private final m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/view/animation/AlphaAnimation;

.field private p:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/dropbox/android/activity/GalleryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/GalleryActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;-><init>()V

    .line 65
    new-instance v0, Lcom/dropbox/android/activity/delegate/x;

    invoke-direct {v0}, Lcom/dropbox/android/activity/delegate/x;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->b:Lcom/dropbox/android/activity/delegate/x;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->h:I

    .line 68
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->c:F

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->d:[F

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->m:Landroid/os/Handler;

    return-void

    .line 69
    nop

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/GalleryActivity;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dropbox/android/activity/GalleryActivity;->p:Landroid/view/animation/Animation$AnimationListener;

    return-object p1
.end method

.method static synthetic a(Lcom/dropbox/android/activity/GalleryActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/GalleryActivity;->b(Z)V

    return-void
.end method

.method private a(ZJ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 226
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v4}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v4

    if-nez v4, :cond_f

    .line 293
    :goto_e
    return-void

    .line 229
    :cond_f
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v4}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v4

    .line 230
    iget-object v5, p0, Lcom/dropbox/android/activity/GalleryActivity;->l:Landroid/view/View;

    iget-boolean v4, v4, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    .line 232
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_39

    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4}, Landroid/view/animation/AlphaAnimation;->hasStarted()Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4}, Landroid/view/animation/AlphaAnimation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_39

    .line 233
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_8b

    .line 234
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 243
    :cond_39
    :goto_39
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_a0

    .line 245
    if-eqz p1, :cond_9c

    move v3, v1

    .line 246
    :goto_42
    if-eqz p1, :cond_9e

    .line 248
    :goto_44
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    .line 249
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 250
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 254
    new-instance v0, Lcom/dropbox/android/activity/aa;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/android/activity/aa;-><init>(Lcom/dropbox/android/activity/GalleryActivity;Z)V

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->p:Landroid/view/animation/Animation$AnimationListener;

    .line 272
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->p:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 274
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_76

    .line 276
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 279
    :cond_76
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->j:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_88

    .line 281
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    :cond_88
    :goto_88
    iput-boolean p1, p0, Lcom/dropbox/android/activity/GalleryActivity;->i:Z

    goto :goto_e

    .line 236
    :cond_8b
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->j:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 237
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->p:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_39

    .line 238
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->p:Landroid/view/animation/Animation$AnimationListener;

    iget-object v5, p0, Lcom/dropbox/android/activity/GalleryActivity;->o:Landroid/view/animation/AlphaAnimation;

    invoke-interface {v4, v5}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_39

    :cond_9c
    move v3, v0

    .line 245
    goto :goto_42

    :cond_9e
    move v0, v1

    .line 246
    goto :goto_44

    .line 285
    :cond_a0
    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->j:Landroid/view/ViewGroup;

    if-eqz p1, :cond_b4

    move v0, v2

    :goto_a5
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_88

    .line 288
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->k:Landroid/view/ViewGroup;

    if-eqz p1, :cond_b6

    :goto_b0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_88

    :cond_b4
    move v0, v3

    .line 285
    goto :goto_a5

    :cond_b6
    move v2, v3

    .line 288
    goto :goto_b0
.end method

.method static synthetic b(Lcom/dropbox/android/activity/GalleryActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->i:Z

    if-ne p1, v0, :cond_5

    .line 223
    :goto_4
    return-void

    .line 221
    :cond_5
    if-eqz p1, :cond_d

    const-wide/16 v0, 0x0

    .line 222
    :goto_9
    invoke-direct {p0, p1, v0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->a(ZJ)V

    goto :goto_4

    .line 221
    :cond_d
    const-wide/16 v0, 0x12c

    goto :goto_9
.end method

.method static synthetic c(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->j:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/dropbox/android/activity/GalleryActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private f()V
    .registers 7

    .prologue
    .line 113
    const v0, 0x7f0d0059

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->j:Landroid/view/ViewGroup;

    .line 114
    const v0, 0x7f0d005d

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->k:Landroid/view/ViewGroup;

    .line 116
    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->l:Landroid/view/View;

    .line 117
    const v0, 0x7f0d005f

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    const v1, 0x7f0d0060

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 119
    const v2, 0x7f0d0061

    invoke-virtual {p0, v2}, Lcom/dropbox/android/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 121
    new-instance v3, Lcom/dropbox/android/activity/T;

    invoke-direct {v3, p0}, Lcom/dropbox/android/activity/T;-><init>(Lcom/dropbox/android/activity/GalleryActivity;)V

    iput-object v3, p0, Lcom/dropbox/android/activity/GalleryActivity;->n:Ljava/lang/Runnable;

    .line 130
    new-instance v3, Lcom/dropbox/android/activity/U;

    invoke-direct {v3, p0}, Lcom/dropbox/android/activity/U;-><init>(Lcom/dropbox/android/activity/GalleryActivity;)V

    .line 145
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->j:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->k:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4e

    .line 147
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    :cond_4e
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->l:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->l:Landroid/view/View;

    new-instance v5, Lcom/dropbox/android/activity/V;

    invoke-direct {v5, p0}, Lcom/dropbox/android/activity/V;-><init>(Lcom/dropbox/android/activity/GalleryActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    new-instance v4, Lcom/dropbox/android/activity/W;

    invoke-direct {v4, p0}, Lcom/dropbox/android/activity/W;-><init>(Lcom/dropbox/android/activity/GalleryActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    new-instance v0, Lcom/dropbox/android/activity/X;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/X;-><init>(Lcom/dropbox/android/activity/GalleryActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    new-instance v0, Lcom/dropbox/android/activity/Y;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/Y;-><init>(Lcom/dropbox/android/activity/GalleryActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->i:Z

    .line 199
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    new-instance v1, Lcom/dropbox/android/activity/Z;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/Z;-><init>(Lcom/dropbox/android/activity/GalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/GalleryView;->setTouchListener(Lcom/dropbox/android/widget/ae;)V

    .line 214
    return-void
.end method


# virtual methods
.method public final a(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->b:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    return-void
.end method

.method public final a_(Z)V
    .registers 2
    .parameter

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/GalleryActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 609
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 578
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 583
    return-void
.end method

.method public final f_()V
    .registers 2

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->i:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/GalleryActivity;->b(Z)V

    .line 297
    return-void

    .line 296
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 592
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 428
    const-string v0, "Change this!"

    return-object v0
.end method

.method public final o()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 441
    sget-object v0, Lcom/dropbox/android/activity/GalleryActivity;->g:Ljava/lang/String;

    const-string v1, "Refreshing gallery."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryActivity;->i()Landroid/net/Uri;

    move-result-object v1

    .line 445
    sget-object v2, Lcom/dropbox/android/provider/B;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/activity/GalleryActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->e:Landroid/database/Cursor;

    .line 447
    const/4 v1, 0x1

    .line 449
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "SELECTED_PATH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    sget-object v2, Lcom/dropbox/android/activity/GalleryActivity;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v2, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v2}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 454
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    move v1, v6

    .line 457
    :cond_4d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 461
    :try_start_52
    iget-object v2, p0, Lcom/dropbox/android/activity/GalleryActivity;->e:Landroid/database/Cursor;

    const/4 v4, -0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_58
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_58} :catch_a9
    .catch Landroid/database/StaleDataException; {:try_start_52 .. :try_end_58} :catch_bd

    move v2, v7

    .line 462
    :cond_59
    :goto_59
    :try_start_59
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->e:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 463
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->e:Landroid/database/Cursor;

    invoke-static {v4}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v4

    .line 464
    sget-object v5, Lcom/dropbox/android/widget/S;->a:Lcom/dropbox/android/widget/S;

    if-eq v4, v5, :cond_6f

    sget-object v5, Lcom/dropbox/android/widget/S;->f:Lcom/dropbox/android/widget/S;

    if-ne v4, v5, :cond_59

    .line 465
    :cond_6f
    iget-object v4, p0, Lcom/dropbox/android/activity/GalleryActivity;->e:Landroid/database/Cursor;

    invoke-static {v4}, Lcom/dropbox/android/provider/B;->a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v4

    .line 466
    if-eqz v4, :cond_59

    .line 467
    invoke-static {v4}, Lcom/dropbox/android/activity/delegate/x;->a(Ldbxyzptlk/l/k;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 468
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v4, v4, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 470
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_8b} :catch_f6
    .catch Landroid/database/StaleDataException; {:try_start_59 .. :try_end_8b} :catch_f4

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_59

    :cond_8f
    move v0, v2

    .line 484
    :goto_90
    if-eqz v1, :cond_d1

    iget v2, p0, Lcom/dropbox/android/activity/GalleryActivity;->h:I

    if-eq v2, v7, :cond_d1

    .line 486
    iget v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->h:I

    .line 493
    :cond_98
    :goto_98
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_dc

    .line 494
    sget-object v0, Lcom/dropbox/android/activity/GalleryActivity;->g:Ljava/lang/String;

    const-string v1, "No images left in gallery, finishing."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryActivity;->finish()V

    .line 504
    :goto_a8
    return-void

    .line 476
    :catch_a9
    move-exception v0

    move v2, v7

    .line 477
    :goto_ab
    sget-object v4, Lcom/dropbox/android/activity/GalleryActivity;->g:Ljava/lang/String;

    const-string v5, "Illegal state in Gallery!"

    invoke-static {v4, v5}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v4

    sget-object v5, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v4, v0, v5}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    move v0, v2

    .line 482
    goto :goto_90

    .line 479
    :catch_bd
    move-exception v0

    move v2, v7

    .line 480
    :goto_bf
    sget-object v4, Lcom/dropbox/android/activity/GalleryActivity;->g:Ljava/lang/String;

    const-string v5, "Stale data in gallery!"

    invoke-static {v4, v5}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v4

    sget-object v5, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v4, v0, v5}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    move v0, v2

    goto :goto_90

    .line 487
    :cond_d1
    if-nez v1, :cond_98

    if-ne v0, v7, :cond_98

    .line 490
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->a()I

    move-result v0

    goto :goto_98

    .line 500
    :cond_dc
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 501
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 503
    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-static {}, Lcom/dropbox/android/util/aW;->f()Ldbxyzptlk/l/o;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/dropbox/android/widget/GalleryView;->setImages(Ljava/lang/Iterable;Ldbxyzptlk/l/o;I)V

    goto :goto_a8

    .line 479
    :catch_f4
    move-exception v0

    goto :goto_bf

    .line 476
    :catch_f6
    move-exception v0

    goto :goto_ab
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->b:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 598
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/widget/GalleryView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 422
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 423
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->b:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/delegate/x;->b(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/GalleryActivity;->setContentView(I)V

    .line 95
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/GalleryView;

    iput-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    .line 97
    invoke-direct {p0}, Lcom/dropbox/android/activity/GalleryActivity;->f()V

    .line 99
    if-eqz p1, :cond_5a

    .line 100
    const-string v0, "mSavedInstanceSelectedIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->h:I

    .line 101
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryActivity;->o()V

    .line 102
    const-string v0, "selectedScale"

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->c:F

    .line 103
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->d:[F

    const-string v1, "selectedCenterX"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v3

    .line 104
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->d:[F

    const-string v1, "selectedCenterY"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v4

    .line 105
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->d:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/dropbox/android/activity/GalleryActivity;->d:[F

    aget v2, v2, v4

    iget v3, p0, Lcom/dropbox/android/activity/GalleryActivity;->c:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/widget/GalleryView;->setCurrentImagePosScale(FFF)V

    .line 110
    :goto_59
    return-void

    .line 107
    :cond_5a
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryActivity;->o()V

    goto :goto_59
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 316
    packed-switch p1, :pswitch_data_54

    .line 390
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->b:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    :cond_b
    :goto_b
    return-object v0

    .line 318
    :pswitch_c
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 320
    const v1, 0x7f090159

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_b

    .line 325
    :pswitch_22
    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 331
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    const-string v2, "Delete"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 333
    const v2, 0x7f090089

    invoke-virtual {p0, v2}, Lcom/dropbox/android/activity/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 334
    const v2, 0x7f09000d

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    new-instance v0, Lcom/dropbox/android/activity/ab;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/ab;-><init>(Lcom/dropbox/android/activity/GalleryActivity;)V

    .line 386
    const v2, 0x7f09008a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_b

    .line 316
    :pswitch_data_54
    .packed-switch 0x3b6
        :pswitch_22
        :pswitch_c
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 519
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_11

    .line 520
    sparse-switch p1, :sswitch_data_5a

    .line 565
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_15
    return v0

    .line 525
    :sswitch_16
    iget-object v2, p0, Lcom/dropbox/android/activity/GalleryActivity;->m:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dropbox/android/activity/GalleryActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    invoke-direct {p0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->b(Z)V

    goto :goto_15

    .line 532
    :sswitch_21
    iget-boolean v2, p0, Lcom/dropbox/android/activity/GalleryActivity;->i:Z

    if-eqz v2, :cond_30

    .line 534
    iget-object v2, p0, Lcom/dropbox/android/activity/GalleryActivity;->m:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dropbox/android/activity/GalleryActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 535
    invoke-direct {p0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->b(Z)V

    goto :goto_15

    .line 540
    :cond_30
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->e()V

    move v0, v1

    .line 541
    goto :goto_15

    .line 544
    :sswitch_37
    iget-boolean v2, p0, Lcom/dropbox/android/activity/GalleryActivity;->i:Z

    if-eqz v2, :cond_46

    .line 546
    iget-object v2, p0, Lcom/dropbox/android/activity/GalleryActivity;->m:Landroid/os/Handler;

    iget-object v3, p0, Lcom/dropbox/android/activity/GalleryActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 547
    invoke-direct {p0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->b(Z)V

    goto :goto_15

    .line 552
    :cond_46
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->f()V

    move v0, v1

    .line 553
    goto :goto_15

    .line 557
    :sswitch_4d
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->m:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dropbox/android/activity/GalleryActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryActivity;->f_()V

    move v0, v1

    .line 559
    goto :goto_15

    .line 520
    nop

    :sswitch_data_5a
    .sparse-switch
        0x13 -> :sswitch_16
        0x14 -> :sswitch_16
        0x15 -> :sswitch_21
        0x16 -> :sswitch_37
        0x17 -> :sswitch_16
        0x52 -> :sswitch_4d
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 408
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onPause()V

    .line 410
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/q;->a()V

    .line 411
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 301
    packed-switch p1, :pswitch_data_16

    .line 309
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->b:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1, p2}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;ILandroid/app/Dialog;)V

    .line 312
    :goto_8
    :pswitch_8
    return-void

    .line 303
    :pswitch_9
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->b()Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    .line 304
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 301
    nop

    :pswitch_data_16
    .packed-switch 0x3b6
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 415
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onResume()V

    .line 416
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 396
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 397
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->b:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/os/Bundle;)V

    .line 399
    const-string v0, "mSavedInstanceSelectedIndex"

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/GalleryView;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    const-string v0, "selectedScale"

    iget-object v1, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/GalleryView;->c()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 401
    iget-object v0, p0, Lcom/dropbox/android/activity/GalleryActivity;->a:Lcom/dropbox/android/widget/GalleryView;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/GalleryView;->d()[F

    move-result-object v0

    .line 402
    const-string v1, "selectedCenterX"

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 403
    const-string v1, "selectedCenterY"

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 404
    return-void
.end method
