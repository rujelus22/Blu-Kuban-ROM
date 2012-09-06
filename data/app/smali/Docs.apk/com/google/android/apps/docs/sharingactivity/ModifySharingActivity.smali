.class public Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "ModifySharingActivity.java"

# interfaces
.implements LOT;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static a:I


# instance fields
.field private a:LPm;

.field private a:LQC;

.field private a:LQg;

.field private a:LQm;

.field public a:LQo;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LQz;

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/os/Parcelable;

.field public a:Landroid/view/View;

.field a:Landroid/widget/ListView;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQC;",
            ">;"
        }
    .end annotation
.end field

.field private final a:[Ldv;

.field private a:[Ljava/lang/String;

.field b:Landroid/view/View;

.field private b:Ljava/lang/String;

.field c:Landroid/view/View;

.field private c:Ljava/lang/String;

.field d:Landroid/view/View;

.field e:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 574
    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 119
    iput-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ljava/lang/String;

    .line 121
    iput-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQz;

    .line 130
    const/16 v0, 0x9

    new-array v0, v0, [Ldv;

    const/4 v1, 0x0

    sget-object v2, Ldv;->m:Ldv;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ldv;->a:Ldv;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ldv;->b:Ldv;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ldv;->e:Ldv;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ldv;->f:Ldv;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ldv;->g:Ldv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ldv;->h:Ldv;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ldv;->k:Ldv;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ldv;->l:Ldv;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ldv;

    .line 147
    iput-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQC;

    .line 155
    iput-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/os/Parcelable;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;LQg;)LQg;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    const-string v1, "resourceId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v1, "documentTitle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    return-object v0
.end method

.method private a(ILjava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LXJ;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 271
    iget-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/view/View;

    if-ne p1, v0, :cond_21

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    if-ne p1, v0, :cond_23

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b:Landroid/view/View;

    if-ne p1, v3, :cond_25

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    return-void

    :cond_21
    move v0, v2

    .line 271
    goto :goto_a

    :cond_23
    move v0, v2

    .line 272
    goto :goto_14

    :cond_25
    move v1, v2

    .line 273
    goto :goto_1d
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->j()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->c(I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;ILjava/lang/Throwable;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(LQC;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 328
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    sget-object v2, LQg;->c:LQg;

    if-ne v1, v2, :cond_2f

    .line 329
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v1}, LQm;->b()Z

    move-result v1

    if-nez v1, :cond_15

    .line 330
    sget v1, LcY;->sharing_cannot_change:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->d(I)V

    .line 340
    :goto_14
    return v0

    .line 332
    :cond_15
    if-nez p1, :cond_1d

    .line 333
    sget v1, LcY;->sharing_cannot_change_option:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->d(I)V

    goto :goto_14

    .line 335
    :cond_1d
    invoke-virtual {p1}, LQC;->a()LQl;

    move-result-object v1

    invoke-virtual {v1}, LQl;->a()Ldw;

    move-result-object v1

    sget-object v2, Ldw;->a:Ldw;

    if-ne v1, v2, :cond_2f

    .line 336
    sget v1, LcY;->sharing_cannot_change_owner:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->d(I)V

    goto :goto_14

    .line 340
    :cond_2f
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private a()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ljava/lang/String;

    if-nez v0, :cond_23

    .line 468
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ldv;

    array-length v1, v0

    .line 469
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ljava/lang/String;

    .line 470
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_23

    .line 471
    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ldv;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v4}, LQm;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ldv;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 475
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 577
    sget v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:I

    .line 578
    sget v1, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:I

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddCollaboratorTextDialogFragment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->e:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 279
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 283
    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Landroid/view/View;)V

    .line 284
    return-void

    .line 281
    :cond_13
    const-string v0, "ModifySharingActivity"

    const-string v1, "Invalid empty list message view"

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->g()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->d(I)V

    return-void
.end method

.method private c(I)V
    .registers 4
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ldv;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, LQm;->a(Ldv;)V

    .line 463
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->j()V

    .line 464
    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->h()V

    return-void
.end method

.method private d(I)V
    .registers 5
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LXJ;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    sget-object v1, LQg;->c:LQg;

    if-ne v0, v1, :cond_11

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v0}, LQm;->b()V

    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->g()V

    .line 223
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->j()V

    .line 225
    :cond_11
    return-void
.end method

.method private g()V
    .registers 6

    .prologue
    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v0}, LQm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    .line 230
    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v3

    invoke-virtual {v3}, LQl;->a()Ldx;

    move-result-object v3

    sget-object v4, Ldx;->b:Ldx;

    if-eq v3, v4, :cond_33

    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v3

    invoke-virtual {v3}, LQl;->a()Ldx;

    move-result-object v3

    sget-object v4, Ldx;->a:Ldx;

    if-ne v3, v4, :cond_f

    .line 232
    :cond_33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 235
    :cond_37
    iput-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Ljava/util/ArrayList;

    .line 236
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 239
    sget-object v0, LQg;->a:LQg;

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    new-instance v1, LQd;

    invoke-direct {v1, p0}, LQd;-><init>(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V

    invoke-interface {v0, v1}, LQm;->a(LQn;)V

    .line 268
    return-void
.end method

.method private i()V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v0}, LQm;->a()Z

    move-result v3

    .line 290
    iget-object v4, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->c:Landroid/view/View;

    if-eqz v3, :cond_27

    move v0, v1

    :goto_e
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->d:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    sget-object v5, LQg;->c:LQg;

    if-ne v4, v5, :cond_29

    iget-object v4, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v4}, LQm;->b()Z

    move-result v4

    if-eqz v4, :cond_29

    if-nez v3, :cond_29

    :goto_23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    return-void

    :cond_27
    move v0, v2

    .line 290
    goto :goto_e

    :cond_29
    move v1, v2

    .line 291
    goto :goto_23
.end method

.method private j()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 297
    const-string v0, "ModifySharingActivity"

    const-string v1, "Populating adapter"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    sget-object v1, LQg;->c:LQg;

    if-eq v0, v1, :cond_14

    .line 299
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Landroid/view/View;)V

    .line 325
    :goto_13
    return-void

    .line 303
    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->o()V

    .line 305
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->i()V

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 307
    sget v0, LcY;->empty_sharing_list:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b(I)V

    goto :goto_13

    .line 310
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Landroid/view/View;)V

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    sget-object v1, LQg;->c:LQg;

    if-ne v0, v1, :cond_65

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Ljava/util/ArrayList;

    invoke-static {}, LQz;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v0}, LQm;->a()Ldv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v1}, LQm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ldv;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    new-instance v0, LQz;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LPm;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LQz;-><init>(Landroid/content/Context;Ljava/util/List;LPm;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQz;

    .line 323
    :goto_58
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQz;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_13

    .line 321
    :cond_65
    new-instance v0, LQz;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LPm;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LQz;-><init>(Landroid/content/Context;Ljava/util/List;LPm;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQz;

    goto :goto_58
.end method

.method private k()V
    .registers 4

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->o()V

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQC;

    if-nez v0, :cond_f

    .line 347
    const-string v0, "ModifySharingActivity"

    const-string v1, "Selected item in contact sharing dialog is not defined."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_e
    return-void

    .line 349
    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQC;

    invoke-virtual {v1}, LQC;->a()LPh;

    move-result-object v1

    invoke-interface {v1}, LPh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    new-instance v1, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;

    invoke-direct {v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;-><init>()V

    .line 353
    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->d(Landroid/os/Bundle;)V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a()Lx;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a(Lx;Ljava/lang/String;)V

    goto :goto_e
.end method

.method private l()V
    .registers 6

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->o()V

    .line 361
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ldv;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 362
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v1}, LQm;->a()Ldv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:[Ldv;

    aget-object v2, v2, v0

    if-ne v1, v2, :cond_37

    .line 364
    new-instance v1, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$SharingOptionsDialogFragment;

    invoke-direct {v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$SharingOptionsDialogFragment;-><init>()V

    .line 365
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 366
    sget v3, LcY;->dialog_sharing_options:I

    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a(Landroid/os/Bundle;I[Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1, v2}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->d(Landroid/os/Bundle;)V

    .line 370
    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->c(I)V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a()Lx;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 376
    :cond_36
    return-void

    .line 361
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private m()V
    .registers 4

    .prologue
    .line 414
    new-instance v0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;-><init>()V

    .line 415
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a()Lx;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method private n()V
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    new-instance v1, LQe;

    invoke-direct {v1, p0}, LQe;-><init>(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V

    invoke-interface {v0, v1}, LQm;->b(LQn;)V

    .line 459
    return-void
.end method

.method private o()V
    .registers 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LeZ;

    sget-object v1, LeV;->i:LeV;

    invoke-interface {v0, v1}, LeZ;->a(LeV;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 547
    :cond_a
    :goto_a
    return-void

    .line 542
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 545
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v1}, LQm;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    goto :goto_a
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 522
    const-class v2, LQm;

    if-ne p1, v2, :cond_10

    .line 523
    if-nez p2, :cond_e

    :goto_8
    invoke-static {v0}, LafQ;->a(Z)V

    .line 525
    iget-object p0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    .line 533
    :goto_d
    return-object p0

    :cond_e
    move v0, v1

    .line 523
    goto :goto_8

    .line 527
    :cond_10
    const-class v2, LOT;

    if-ne p1, v2, :cond_1c

    .line 528
    if-nez p2, :cond_1a

    :goto_16
    invoke-static {v0}, LafQ;->a(Z)V

    goto :goto_d

    :cond_1a
    move v0, v1

    goto :goto_16

    .line 533
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/app/BaseActivity;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_d
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->c()V

    .line 194
    sget v0, LcS;->loading_sharing_list:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/view/View;

    .line 195
    sget v0, LcS;->empty_sharing_list:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b:Landroid/view/View;

    .line 196
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    .line 197
    sget v0, LcS;->save_sharing_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->c:Landroid/view/View;

    .line 198
    sget v0, LcS;->add_collaborators_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->d:Landroid/view/View;

    .line 199
    sget v0, LcS;->empty_list_message:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->e:Landroid/view/View;

    .line 200
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    new-instance v1, LQf;

    invoke-direct {v1, p0}, LQf;-><init>(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V

    invoke-interface {v0, v1}, LQm;->b(LQn;)V

    .line 572
    return-void
.end method

.method public onAddClicked(Landroid/view/View;)V
    .registers 3
    .parameter
    .annotation build Lcom/google/android/apps/docs/KeepAfterProguard;
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 410
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->m()V

    .line 411
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LdE;

    invoke-virtual {v1}, LdE;->a()V

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LdE;

    const-string v2, "/sharing"

    invoke-virtual {v1, v2, v0}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 168
    sget v1, LcU;->sharing_list:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->setContentView(I)V

    .line 170
    new-instance v1, LPm;

    sget v2, LQz;->a:I

    invoke-direct {v1, p0, v2}, LPm;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LPm;

    .line 171
    const-string v1, "resourceId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b:Ljava/lang/String;

    if-nez v1, :cond_38

    .line 173
    const-string v0, "ModifySharingActivity"

    const-string v1, "No resource ID for the document is specified. Exiting."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->finish()V

    .line 189
    :goto_37
    return-void

    .line 177
    :cond_38
    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Ljava/lang/String;

    if-nez v1, :cond_4f

    .line 179
    const-string v0, "ModifySharingActivity"

    const-string v1, "No account for the document access is specified. Exiting."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->finish()V

    goto :goto_37

    .line 183
    :cond_4f
    const-string v1, "documentTitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->c:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_7b

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    :cond_7b
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQo;

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, LQo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LQm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    .line 188
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->h()V

    goto :goto_37
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 494
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 495
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onDestroy()V

    .line 496
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 381
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    .line 382
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(LQC;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 392
    :goto_13
    return-void

    .line 385
    :cond_14
    if-nez v0, :cond_1a

    .line 386
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->l()V

    goto :goto_13

    .line 388
    :cond_1a
    const-string v1, "ModifySharingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LQC;->a()LPh;

    move-result-object v3

    invoke-interface {v3}, LPh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQC;

    .line 390
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->k()V

    goto :goto_13
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 480
    const-string v0, "ModifySharingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    invoke-virtual {v2}, LQg;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 482
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LdE;

    const-string v1, "/sharing"

    invoke-virtual {v0, p0, v1}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LPm;

    invoke-virtual {v0}, LPm;->a()V

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQm;

    invoke-interface {v0}, LQm;->a()V

    .line 488
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onPause()V

    .line 489
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 421
    const-string v0, "listViewState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/os/Parcelable;

    .line 422
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 204
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onResume()V

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 206
    const-string v1, "ModifySharingActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume in state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    if-nez v0, :cond_50

    const-string v0, "NULL"

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LdE;

    invoke-virtual {v0, p0}, LdE;->a(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LPm;

    invoke-virtual {v0}, LPm;->d()V

    .line 210
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->f()V

    .line 211
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->o()V

    .line 212
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->j()V

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_4f

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/os/Parcelable;

    .line 217
    :cond_4f
    return-void

    .line 206
    :cond_50
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    invoke-virtual {v0}, LQg;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public onSaveClicked(Landroid/view/View;)V
    .registers 4
    .parameter
    .annotation build Lcom/google/android/apps/docs/KeepAfterProguard;
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    sget-object v0, LQg;->b:LQg;

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:LQg;

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Landroid/view/View;)V

    .line 403
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->n()V

    .line 404
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 427
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 428
    const-string v0, "listViewState"

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 430
    :cond_16
    return-void
.end method
