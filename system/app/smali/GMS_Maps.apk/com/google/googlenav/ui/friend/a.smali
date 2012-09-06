.class public Lcom/google/googlenav/ui/friend/a;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements Lah/p;


# static fields
.field private static final C:Lcom/google/common/collect/bx;

.field private static final D:[Ljava/lang/CharSequence;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Z

.field private final a:Lcom/google/googlenav/ui/friend/p;

.field private final b:Lcom/google/googlenav/friend/aK;

.field private final c:Lcom/google/googlenav/ui/af;

.field private final d:Lcom/google/googlenav/ui/friend/n;

.field private e:Lcom/google/googlenav/ui/view/android/DistanceView;

.field private m:Lcom/google/googlenav/ui/view/android/HeadingView;

.field private n:Landroid/view/View;

.field private o:Z

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/QuickContactBadge;

.field private x:LT/f;

.field private y:Lcom/google/googlenav/ui/friend/E;

.field private z:Lcom/google/googlenav/ui/friend/o;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    new-instance v0, Lcom/google/common/collect/by;

    invoke-direct {v0}, Lcom/google/common/collect/by;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x134

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/by;->a()Lcom/google/common/collect/bx;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/friend/a;->C:Lcom/google/common/collect/bx;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/16 v1, 0x1b9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x1ac

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1b6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/ui/friend/a;->D:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/friend/aK;Lcom/google/googlenav/ui/friend/o;Lcom/google/googlenav/ui/friend/p;Lcom/google/googlenav/ui/friend/n;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p3}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p4}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_13
    const-string v1, "FriendProfileDialog2 must be used only for profiles of friends, not the user"

    invoke-static {v0, v1}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    .line 207
    iput-object p1, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    .line 208
    iput-object p2, p0, Lcom/google/googlenav/ui/friend/a;->z:Lcom/google/googlenav/ui/friend/o;

    .line 209
    invoke-interface {p2}, Lcom/google/googlenav/ui/friend/o;->b()Lcom/google/googlenav/ui/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->c:Lcom/google/googlenav/ui/af;

    .line 210
    iput-object p3, p0, Lcom/google/googlenav/ui/friend/a;->a:Lcom/google/googlenav/ui/friend/p;

    .line 211
    iput-object p4, p0, Lcom/google/googlenav/ui/friend/a;->d:Lcom/google/googlenav/ui/friend/n;

    .line 212
    return-void

    .line 204
    :cond_27
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static synthetic a(Lcom/google/googlenav/ui/friend/a;)Lcom/google/googlenav/ui/friend/p;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->a:Lcom/google/googlenav/ui/friend/p;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v1

    .line 277
    const v0, 0x7f1001b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->w:Landroid/widget/QuickContactBadge;

    .line 279
    invoke-static {v1}, Lcom/google/common/base/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 280
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->w:Landroid/widget/QuickContactBadge;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 281
    const v0, 0x7f1001b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/friend/g;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/friend/g;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    :cond_2d
    new-instance v0, Lcom/google/googlenav/ui/friend/E;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/friend/E;-><init>(Ljava/lang/Long;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->y:Lcom/google/googlenav/ui/friend/E;

    .line 293
    const v0, 0x7f100090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->u:Landroid/widget/TextView;

    .line 294
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const v0, 0x7f1001b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->v:Landroid/widget/TextView;

    .line 297
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const v0, 0x7f100193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->t:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f1001ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->A:Landroid/widget/TextView;

    .line 303
    const v0, 0x7f1001bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->n:Landroid/view/View;

    .line 304
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    const v0, 0x7f100194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->e:Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 306
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->e:Lcom/google/googlenav/ui/view/android/DistanceView;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/android/DistanceView;->setVisibility(I)V

    .line 307
    const v0, 0x7f100195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->m:Lcom/google/googlenav/ui/view/android/HeadingView;

    .line 308
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->m:Lcom/google/googlenav/ui/view/android/HeadingView;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/android/HeadingView;->setVisibility(I)V

    .line 309
    return-void
.end method

.method private a(Landroid/view/View;ILjava/lang/CharSequence;ILandroid/view/View$OnClickListener;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 365
    const v0, 0x7f100428

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 366
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const v0, 0x7f100022

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 368
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    if-eqz p6, :cond_26

    .line 370
    invoke-virtual {v1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :goto_22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    return-void

    .line 372
    :cond_26
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/friend/a;->k(Landroid/view/View;)V

    .line 373
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_22
.end method

.method static synthetic b(Lcom/google/googlenav/ui/friend/a;)Landroid/widget/QuickContactBadge;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->w:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/friend/a;->d(Landroid/view/View;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/friend/a;->e(Landroid/view/View;)V

    .line 350
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/friend/a;->c(Landroid/view/View;)V

    .line 351
    return-void
.end method

.method private b(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 603
    if-eqz p1, :cond_10

    .line 604
    iget-boolean v0, p0, Lcom/google/googlenav/ui/friend/a;->o:Z

    if-nez v0, :cond_f

    .line 605
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/friend/a;->o:Z

    .line 614
    :cond_f
    :goto_f
    return-void

    .line 609
    :cond_10
    iget-boolean v0, p0, Lcom/google/googlenav/ui/friend/a;->o:Z

    if-eqz v0, :cond_f

    .line 610
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iput-boolean v2, p0, Lcom/google/googlenav/ui/friend/a;->o:Z

    goto :goto_f
.end method

.method private c(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    .line 379
    const v2, 0x7f1001be

    const/16 v0, 0x59d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200f7

    new-instance v5, Lcom/google/googlenav/ui/friend/h;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/friend/h;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->d:Lcom/google/googlenav/ui/friend/n;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/friend/n;->c(Lcom/google/googlenav/friend/aK;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/friend/a;->a(Landroid/view/View;ILjava/lang/CharSequence;ILandroid/view/View$OnClickListener;Z)V

    .line 388
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/friend/a;)V
    .registers 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/a;->w()V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    .line 391
    const v2, 0x7f1001bc

    const/16 v0, 0x50c

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0203de

    new-instance v5, Lcom/google/googlenav/ui/friend/i;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/friend/i;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->d:Lcom/google/googlenav/ui/friend/n;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/friend/n;->a(Lcom/google/googlenav/friend/aK;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/friend/a;->a(Landroid/view/View;ILjava/lang/CharSequence;ILandroid/view/View$OnClickListener;Z)V

    .line 400
    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/friend/a;)V
    .registers 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/a;->o()V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    .line 403
    const v2, 0x7f1001bd

    const/16 v0, 0xef

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0203db

    new-instance v5, Lcom/google/googlenav/ui/friend/j;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/friend/j;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->d:Lcom/google/googlenav/ui/friend/n;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/friend/n;->b(Lcom/google/googlenav/friend/aK;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/friend/a;->a(Landroid/view/View;ILjava/lang/CharSequence;ILandroid/view/View$OnClickListener;Z)V

    .line 412
    return-void
.end method

.method private f(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 471
    const v0, 0x7f1001c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->p:Landroid/view/View;

    .line 473
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->p:Landroid/view/View;

    const v1, 0x7f10001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 474
    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->p:Landroid/view/View;

    const v1, 0x7f1001c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 477
    new-instance v1, Lcom/google/googlenav/ui/friend/k;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/friend/k;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 485
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    :cond_3b
    return-void
.end method

.method private g(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f1001c4

    const/4 v3, 0x0

    .line 490
    const v0, 0x7f1001c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->q:Landroid/view/View;

    .line 492
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->q:Landroid/view/View;

    const v1, 0x7f10001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 493
    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->q:Landroid/view/View;

    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 496
    const/16 v1, 0x17e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->q:Landroid/view/View;

    const v1, 0x7f100023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 499
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->q:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 501
    iget-object v2, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->u()Z

    move-result v2

    if-nez v2, :cond_61

    .line 502
    const/16 v1, 0x17f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 504
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/friend/a;->k(Landroid/view/View;)V

    .line 515
    :goto_60
    return-void

    .line 506
    :cond_61
    const/16 v2, 0x178

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 508
    new-instance v0, Lcom/google/googlenav/ui/friend/l;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/friend/l;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_60
.end method

.method private h(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 518
    const v0, 0x7f1001bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->r:Landroid/view/View;

    .line 520
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->r:Landroid/view/View;

    const v1, 0x7f10001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 521
    const v1, 0x7f02039a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 523
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->r:Landroid/view/View;

    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 524
    const/16 v1, 0x143

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->r:Landroid/view/View;

    const v1, 0x7f100023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 526
    const/16 v1, 0x144

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->r:Landroid/view/View;

    const v1, 0x7f1001c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->I()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 531
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    :goto_5a
    return-void

    .line 533
    :cond_5b
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->r:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 534
    new-instance v1, Lcom/google/googlenav/ui/friend/m;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/friend/m;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5a
.end method

.method private i(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 544
    const v0, 0x7f1001c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 545
    const v0, 0x7f10001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 546
    const/16 v2, 0x198

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    const v0, 0x7f10001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 549
    const v2, 0x7f02039a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 551
    const v0, 0x7f100023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->s:Landroid/widget/TextView;

    .line 552
    const v0, 0x7f1001c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 554
    new-instance v1, Lcom/google/googlenav/ui/friend/c;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/friend/c;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    return-void
.end method

.method private j(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 563
    const v0, 0x7f1001c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 564
    const v0, 0x7f100023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 566
    const v0, 0x7f10001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 567
    const/16 v2, 0x1b8

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    const v0, 0x7f10001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 570
    const v2, 0x7f020368

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    const v0, 0x7f1001c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 573
    new-instance v1, Lcom/google/googlenav/ui/friend/d;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/friend/d;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    return-void
.end method

.method static synthetic k()Lcom/google/common/collect/bx;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/googlenav/ui/friend/a;->C:Lcom/google/common/collect/bx;

    return-object v0
.end method

.method private k(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const v2, 0x3ecccccd

    .line 676
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 677
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 684
    :goto_c
    return-void

    .line 679
    :cond_d
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 680
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 681
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 682
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c
.end method

.method private l()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->z:Lcom/google/googlenav/ui/friend/o;

    invoke-interface {v1}, Lcom/google/googlenav/ui/friend/o;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/googlenav/friend/M;->a(Lcom/google/googlenav/friend/aK;JZZ)Ljava/lang/String;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_1a

    .line 336
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :goto_19
    return-void

    .line 339
    :cond_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->A:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19
.end method

.method private m()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 427
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 428
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :goto_18
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 435
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/a;->v()V

    .line 436
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :goto_28
    return-void

    .line 430
    :cond_29
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 438
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28
.end method

.method private n()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/google/googlenav/ui/friend/a;->P_()V

    .line 444
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-static {v1, v2, v2, v2, v3}, Lcom/google/googlenav/friend/M;->a(Lcom/google/googlenav/friend/aK;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->G()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 448
    :cond_20
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/friend/a;->b(Z)V

    .line 454
    :goto_23
    return-void

    .line 450
    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->e:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->m:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v2, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->E()Lat/B;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaB/g;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 452
    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/friend/a;->b(Z)V

    goto :goto_23
.end method

.method private o()V
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->k()Z

    move-result v0

    if-nez v0, :cond_14

    .line 460
    const/16 v0, 0x1b6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_e
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    return-void

    .line 461
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->l()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 462
    const/16 v0, 0x1ac

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 464
    :cond_23
    const/16 v0, 0x1b9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private v()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 617
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->C()Z

    move-result v0

    const-string v1, "Valid checkin must exist"

    invoke-static {v0, v1}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 619
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0, v7, v6}, Lcom/google/googlenav/friend/aK;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 621
    const/16 v1, 0xb4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->D()Lcom/google/googlenav/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/a;->b()J

    move-result-wide v2

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 627
    const/16 v0, 0xb3

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v2, v3, v6, v7}, Lcom/google/googlenav/b;->a(JZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v0, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 631
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->p:Landroid/view/View;

    const v3, 0x7f10001e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 632
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->p:Landroid/view/View;

    const v1, 0x7f100023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 635
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    return-void
.end method

.method private w()V
    .registers 5

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->k()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 646
    const/4 v0, 0x2

    .line 653
    :goto_9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/friend/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 655
    const/16 v2, 0x1b5

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 656
    sget-object v2, Lcom/google/googlenav/ui/friend/a;->D:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/google/googlenav/ui/friend/e;

    invoke-direct {v3, p0, v0}, Lcom/google/googlenav/ui/friend/e;-><init>(Lcom/google/googlenav/ui/friend/a;I)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 667
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 669
    return-void

    .line 647
    :cond_2d
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->b:Lcom/google/googlenav/friend/aK;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->l()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 648
    const/4 v0, 0x1

    goto :goto_9

    .line 650
    :cond_37
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public P_()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->c:Lcom/google/googlenav/ui/af;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->y:Lcom/google/googlenav/ui/friend/E;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 320
    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->x:LT/f;

    if-eq v1, v0, :cond_1b

    .line 321
    iput-object v0, p0, Lcom/google/googlenav/ui/friend/a;->x:LT/f;

    .line 322
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->w:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/google/googlenav/ui/friend/a;->x:LT/f;

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 324
    :cond_1b
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    .prologue
    .line 216
    const/4 v0, 0x1

    const v1, 0x7f020210

    new-instance v2, Lcom/google/googlenav/ui/friend/b;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/friend/b;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_46

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/friend/a;->a(ZILag/f;[I)V

    .line 225
    const/16 v0, 0x222

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100025

    const v2, 0x7f02027f

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/friend/a;->a(Ljava/lang/CharSequence;II)V

    .line 228
    invoke-virtual {p0}, Lcom/google/googlenav/ui/friend/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 231
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/friend/a;->a(Landroid/view/View;)V

    .line 232
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/friend/a;->b(Landroid/view/View;)V

    .line 233
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/friend/a;->h(Landroid/view/View;)V

    .line 234
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/friend/a;->f(Landroid/view/View;)V

    .line 235
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/friend/a;->g(Landroid/view/View;)V

    .line 236
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/friend/a;->i(Landroid/view/View;)V

    .line 237
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/friend/a;->j(Landroid/view/View;)V

    .line 239
    invoke-virtual {p0}, Lcom/google/googlenav/ui/friend/a;->i()V

    .line 240
    return-object v0

    .line 216
    :array_46
    .array-data 0x4
        0xbet 0xbt 0x0t 0x0t
        0xbdt 0xbt 0x0t 0x0t
    .end array-data
.end method

.method protected d()V
    .registers 3

    .prologue
    .line 253
    sget-object v0, Lcom/google/googlenav/ui/friend/a;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    .line 254
    if-nez v0, :cond_9

    .line 269
    :goto_8
    return-void

    .line 258
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/friend/a;->B:Z

    .line 261
    const v1, 0x7f1000f9

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/google/googlenav/ui/friend/f;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/friend/f;-><init>(Lcom/google/googlenav/ui/friend/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .registers 1

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/a;->n()V

    .line 419
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/a;->l()V

    .line 421
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/a;->m()V

    .line 422
    invoke-direct {p0}, Lcom/google/googlenav/ui/friend/a;->o()V

    .line 423
    return-void
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->a:Lcom/google/googlenav/ui/friend/p;

    invoke-interface {v0}, Lcom/google/googlenav/ui/friend/p;->i()V

    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/google/googlenav/ui/friend/a;->B:Z

    if-eqz v0, :cond_d

    .line 590
    invoke-virtual {p0}, Lcom/google/googlenav/ui/friend/a;->dismiss()V

    .line 591
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->a:Lcom/google/googlenav/ui/friend/p;

    invoke-interface {v0}, Lcom/google/googlenav/ui/friend/p;->k()V

    .line 596
    :goto_c
    return-void

    .line 593
    :cond_d
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->onBackPressed()V

    .line 594
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/a;->a:Lcom/google/googlenav/ui/friend/p;

    invoke-interface {v0}, Lcom/google/googlenav/ui/friend/p;->h()V

    goto :goto_c
.end method
