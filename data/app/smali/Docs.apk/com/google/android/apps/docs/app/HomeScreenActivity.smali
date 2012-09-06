.class public Lcom/google/android/apps/docs/app/HomeScreenActivity;
.super Lcom/google/android/apps/docs/app/BaseDialogActivity;
.source "HomeScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:LgR;

.field private static final b:LgR;


# instance fields
.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<[",
            "Lhq;",
            ">;"
        }
    .end annotation
.end field

.field private a:Landroid/widget/Button;

.field private a:Lcom/google/android/apps/docs/view/TitleBar;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Ldg;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LhM;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lji;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LkG;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field protected a:LpB;

.field public c:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 96
    new-instance v0, LgR;

    new-array v1, v4, [I

    sget v2, LcS;->home_screen_row1:I

    aput v2, v1, v3

    sget v2, LcS;->home_screen_row2:I

    aput v2, v1, v5

    invoke-direct {v0, v6, v1, v7}, LgR;-><init>(I[ILgK;)V

    sput-object v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LgR;

    .line 98
    new-instance v0, LgR;

    new-array v1, v6, [I

    sget v2, LcS;->home_screen_row1:I

    aput v2, v1, v3

    sget v2, LcS;->home_screen_row2:I

    aput v2, v1, v5

    sget v2, LcS;->home_screen_row3:I

    aput v2, v1, v4

    const/4 v2, 0x3

    sget v3, LcS;->home_screen_row4:I

    aput v3, v1, v2

    invoke-direct {v0, v4, v1, v7}, LgR;-><init>(I[ILgK;)V

    sput-object v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->b:LgR;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 230
    invoke-static {}, LgQ;->values()[LgQ;

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;-><init>(I)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->i:Z

    .line 231
    return-void
.end method

.method public static a(Lnk;)I
    .registers 2
    .parameter

    .prologue
    .line 793
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lnk;->ordinal()I

    move-result v0

    .line 794
    :goto_6
    add-int/lit16 v0, v0, 0x3e8

    return v0

    .line 793
    :cond_9
    const/4 v0, -0x1

    goto :goto_6
.end method

.method private a()LgR;
    .registers 3

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 426
    sget-object v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LgR;

    .line 428
    :goto_f
    return-object v0

    :cond_10
    sget-object v0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->b:LgR;

    goto :goto_f
.end method

.method private a(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 566
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    sget-object v0, Lhs;->a:Lhs;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lhs;)[LgP;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_10
    if-ge v0, v4, :cond_4c

    aget-object v5, v3, v0

    .line 372
    new-instance v6, Landroid/widget/Button;

    sget v7, LcZ;->HomeScreen_IconEntry:I

    invoke-direct {v6, p0, v10, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 373
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 374
    iget-object v7, v5, LgP;->a:Lnk;

    invoke-static {v7}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lnk;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 375
    iget v7, v5, LgP;->a:I

    invoke-virtual {p0, v7}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 376
    sget v8, LcR;->home_page_button:I

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 377
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget v5, v5, LgP;->b:I

    invoke-virtual {v6, v1, v5, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 380
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 382
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setFocusable(Z)V

    .line 383
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 386
    :cond_4c
    new-instance v0, Landroid/widget/Button;

    sget v3, LcZ;->HomeScreen_IconEntry:I

    invoke-direct {v0, p0, v10, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 387
    const-string v3, "buttonMore"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 388
    sget v3, LcY;->home_more_choices:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 391
    sget v3, LcR;->home_more:I

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 392
    sget v1, LcR;->home_more_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 393
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 395
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setFocusable(Z)V

    .line 396
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-object v2
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/HomeScreenActivity;)LkG;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    return-object v0
.end method

.method private a(Landroid/accounts/Account;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 666
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->b(Ljava/lang/String;Z)V

    .line 668
    return-void
.end method

.method private a(Landroid/widget/ListView;)V
    .registers 8
    .parameter

    .prologue
    .line 321
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 323
    sget-object v0, Lhs;->a:Lhs;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lhs;)[LgP;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LZJ;

    invoke-interface {v0}, LZJ;->d()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 326
    sget-object v0, Lhs;->c:Lhs;

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lhs;)[LgP;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 329
    :cond_27
    new-instance v0, LgL;

    sget v3, LcU;->navigation_menu_item:I

    sget v4, LcS;->navigation_name:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, LgL;-><init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;Landroid/content/Context;IILjava/util/ArrayList;)V

    .line 342
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LgP;

    .line 343
    iget v1, v1, LgP;->a:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_36

    .line 346
    :cond_4c
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 347
    new-instance v0, LgM;

    invoke-direct {v0, p0, v5}, LgM;-><init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 356
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/HomeScreenActivity;Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->i:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Ljava/lang/String;Z)V

    .line 625
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 628
    if-eqz p1, :cond_2a

    move v0, v1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 630
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LHW;

    invoke-static {v0, p1}, LXl;->a(LHW;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_2c

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google account not found for user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 635
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Landroid/accounts/Account;Z)V

    .line 636
    return-void

    :cond_2a
    move v0, v2

    .line 628
    goto :goto_5

    :cond_2c
    move v1, v2

    .line 632
    goto :goto_10
.end method

.method private a(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()LgR;

    move-result-object v5

    .line 407
    iget-object v3, v5, LgR;->a:[I

    array-length v4, v3

    move v1, v2

    :goto_9
    if-ge v1, v4, :cond_1a

    aget v0, v3, v1

    .line 408
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 409
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 407
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 413
    :cond_1a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 414
    add-int/lit8 v4, v3, 0x1

    .line 416
    iget v0, v5, LgR;->a:I

    div-int/2addr v3, v0

    .line 417
    iget-object v0, v5, LgR;->a:[I

    array-length v0, v0

    if-ge v3, v0, :cond_49

    const/4 v0, 0x1

    :goto_37
    invoke-static {v0}, LafQ;->b(Z)V

    .line 418
    iget-object v0, v5, LgR;->a:[I

    aget v0, v0, v3

    .line 419
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 420
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v3, v4

    .line 421
    goto :goto_1f

    :cond_49
    move v0, v2

    .line 417
    goto :goto_37

    .line 422
    :cond_4b
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/HomeScreenActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->e()Z

    move-result v0

    return v0
.end method

.method private a(Lhs;)[LgP;
    .registers 12
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 438
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 439
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->c:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    .line 441
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhq;

    array-length v4, v0

    move v1, v2

    :goto_18
    if-ge v1, v4, :cond_3e

    aget-object v5, v0, v1

    .line 444
    invoke-virtual {v5, p1}, Lhq;->a(Lhs;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 441
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 448
    :cond_25
    new-instance v6, LgP;

    invoke-virtual {v5}, Lhq;->a()Lnk;

    move-result-object v7

    invoke-virtual {v5}, Lhq;->b()I

    move-result v8

    invoke-virtual {v5}, Lhq;->a()I

    move-result v9

    invoke-virtual {v5}, Lhq;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v9, v5}, LgP;-><init>(Lnk;IILjava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 453
    :cond_3e
    new-array v0, v2, [LgP;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LgP;

    return-object v0
.end method

.method private a()[Lhq;
    .registers 4

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->c:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-virtual {v0}, LdL;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {}, LZG;->a()LdX;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lhq;->a(IILdX;)[Lhq;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 671
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4c

    move v0, v1

    :goto_c
    invoke-static {v0}, LafQ;->a(Z)V

    .line 673
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Llu;

    invoke-interface {v0, p1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, LkG;->c()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 675
    invoke-virtual {v0}, LkG;->c()V

    .line 678
    :cond_22
    iget-object v3, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    if-eqz v3, :cond_4e

    invoke-virtual {v0}, LkG;->c()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    invoke-virtual {v5}, LkG;->c()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4e

    .line 679
    :goto_34
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()LIi;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Landroid/widget/Button;

    invoke-interface {v2, v3, p1}, LIi;->a(Landroid/widget/Button;Ljava/lang/String;)V

    .line 680
    iput-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    .line 682
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->m()V

    .line 684
    if-nez v1, :cond_4b

    if-nez p2, :cond_4b

    .line 685
    iget-object v1, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LHW;

    invoke-interface {v1, v0}, LHW;->a(LkG;)V

    .line 687
    :cond_4b
    return-void

    :cond_4c
    move v0, v2

    .line 672
    goto :goto_c

    :cond_4e
    move v1, v2

    .line 678
    goto :goto_34
.end method

.method private e()Z
    .registers 2

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private g()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->c:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    .line 304
    sget-object v1, LdL;->b:LdL;

    if-ne v0, v1, :cond_1f

    .line 305
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 306
    sget v1, LcS;->home_screen_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 308
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Landroid/widget/ListView;)V

    .line 310
    :cond_1f
    return-void
.end method

.method private h()V
    .registers 2

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()Ljava/util/List;

    move-result-object v0

    .line 366
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Ljava/util/List;)V

    .line 367
    return-void
.end method

.method private i()V
    .registers 4

    .prologue
    .line 457
    new-instance v0, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()Lx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/IntroDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    if-eqz v0, :cond_5

    .line 619
    :goto_4
    return-void

    .line 613
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LHW;

    invoke-static {v0}, LHY;->b(LHW;)Landroid/accounts/Account;

    move-result-object v0

    .line 614
    if-nez v0, :cond_11

    .line 615
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->k()V

    goto :goto_4

    .line 617
    :cond_11
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Landroid/accounts/Account;Z)V

    goto :goto_4
.end method

.method private k()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 639
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LdE;

    const-string v1, "/addAccount"

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 640
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LXJ;

    sget v1, LcY;->google_account_needed_all_apps:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    new-instance v0, LgN;

    invoke-direct {v0, p0}, LgN;-><init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;)V

    .line 662
    iget-object v1, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LHW;

    const-string v2, "com.google"

    invoke-interface {v1, v2, p0, v0}, LHW;->a(Ljava/lang/String;Landroid/app/Activity;LHX;)V

    .line 663
    return-void
.end method

.method private l()V
    .registers 3

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LHW;

    invoke-interface {v1, v0}, LHW;->a(Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method private m()V
    .registers 5

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v0

    .line 749
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()LIi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Landroid/widget/Button;

    new-instance v3, LgO;

    invoke-direct {v3, p0}, LgO;-><init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;)V

    invoke-interface {v1, v2, v0, v3}, LIi;->a(Landroid/widget/Button;[Landroid/accounts/Account;LIj;)V

    .line 759
    return-void
.end method


# virtual methods
.method protected a()LIC;
    .registers 3

    .prologue
    .line 768
    new-instance v1, Lej;

    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->c:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-direct {v1, p0, v0}, Lej;-><init>(Landroid/app/Activity;LdL;)V

    return-object v1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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
    .line 799
    const-class v0, [Lhq;

    if-ne p1, v0, :cond_9

    .line 801
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()[Lhq;

    move-result-object v0

    .line 804
    :goto_8
    return-object v0

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    if-eqz v0, :cond_b

    .line 784
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    .line 788
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_c

    .line 572
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Ljava/lang/String;)V

    .line 573
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->m()V

    .line 575
    :cond_c
    return-void
.end method

.method public a(Lnk;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LdE;

    const-string v1, "homeScreen"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, p2, v2, v3}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 693
    new-instance v1, LhX;

    invoke-direct {v1}, LhX;-><init>()V

    .line 694
    iget-object v2, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    .line 695
    iget-object v3, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LhM;

    invoke-interface {v3, v2}, LhM;->a(Ljava/lang/String;)LhK;

    move-result-object v3

    invoke-virtual {v1, v3}, LhX;->a(LhK;)LhX;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LhM;

    invoke-interface {v4, p1, v2}, LhM;->a(Lnk;Ljava/lang/String;)LhK;

    move-result-object v4

    invoke-virtual {v3, v4}, LhX;->a(LhK;)LhX;

    .line 697
    invoke-virtual {v1}, LhX;->a()LhW;

    move-result-object v1

    .line 698
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object v1, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lji;

    invoke-static {p0, v0, v2, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lji;)V

    .line 702
    return-void
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 815
    const/4 v0, 0x1

    return v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 360
    sget v0, LcS;->account_switcher:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Landroid/widget/Button;

    .line 361
    sget v0, LcS;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/TitleBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    .line 362
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .registers 4

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->j()V

    .line 315
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Lcom/google/android/apps/docs/app/BaseActivity;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->c:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Ldg;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/content/Context;LdL;Ljava/lang/String;Ldg;)V

    .line 318
    return-void
.end method

.method protected e()V
    .registers 6

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LdE;

    const-string v1, "homeScreen"

    const-string v2, "switchAccount"

    const/4 v3, 0x0

    invoke-static {p0}, LXl;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    const-class v1, Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 584
    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 586
    return-void
.end method

.method protected f()V
    .registers 6

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    if-nez v0, :cond_13

    .line 735
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LHW;

    invoke-interface {v0}, LHW;->a()Ljava/lang/String;

    move-result-object v0

    .line 736
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 738
    :try_start_10
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_14

    .line 744
    :cond_13
    :goto_13
    return-void

    .line 739
    :catch_14
    move-exception v1

    .line 740
    const-string v2, "HomeScreenActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set account for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]. Ignoring this user."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 591
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 592
    if-nez p1, :cond_27

    .line 593
    const/4 v0, -0x1

    if-ne p2, v0, :cond_27

    .line 594
    const-string v0, "accountName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 596
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->finish()V

    .line 597
    iget-object v1, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LXj;

    invoke-interface {v1, p0, v0}, LXj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 601
    :cond_27
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, LcS;->account_switcher:I

    if-ne v0, v1, :cond_11

    .line 525
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->e()V

    .line 537
    :cond_10
    :goto_10
    return-void

    .line 528
    :cond_11
    const-string v0, "buttonMore"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 529
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LpB;

    invoke-interface {v0}, LpB;->a()V

    goto :goto_10

    .line 533
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, LgP;

    if-eqz v0, :cond_10

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LgP;

    .line 535
    iget-object v1, v0, LgP;->a:Lnk;

    iget-object v0, v0, LgP;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lnk;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 241
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 243
    sget v0, LcU;->home_screen_activity:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->setContentView(I)V

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->a()V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 247
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->e()Z

    move-result v1

    if-nez v1, :cond_22

    .line 248
    iget-object v1, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LdE;

    const-string v2, "/homeScreen"

    invoke-virtual {v1, v2, v0}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 251
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Llu;

    invoke-interface {v0}, Llu;->d()V

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-interface {v0, v1}, LIi;->a(LIB;)V

    .line 255
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()LIi;

    move-result-object v0

    invoke-interface {v0, v7, v7}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->f()V

    .line 259
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()Lx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a(Lx;)V

    .line 261
    if-nez p1, :cond_4f

    .line 262
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Landroid/content/Intent;)V

    .line 268
    :cond_4f
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->c:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    .line 269
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 270
    sget v1, LcS;->home_screen_list:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 271
    sget v2, LcS;->home_screen_table:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 272
    sget-object v2, LdL;->b:LdL;

    if-ne v0, v2, :cond_ac

    move v2, v3

    :goto_72
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 273
    sget-object v1, LdL;->a:LdL;

    if-ne v0, v1, :cond_ae

    :goto_79
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 275
    sget-object v1, LdL;->a:LdL;

    if-ne v0, v1, :cond_b0

    .line 276
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->h()V

    .line 277
    const-string v0, "buttonMore"

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 278
    sget v1, LcN;->quick_action_slide:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 279
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 280
    new-instance v2, LgS;

    invoke-direct {v2, p0, v7}, LgS;-><init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;LgK;)V

    .line 281
    new-instance v3, Lpu;

    invoke-direct {v3, v2, v5, v0, v1}, Lpu;-><init>(Lpx;Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lof;)LpB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LpB;

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Landroid/widget/Button;

    sget v1, LcR;->account_background_docs:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 296
    :goto_ab
    return-void

    :cond_ac
    move v2, v4

    .line 272
    goto :goto_72

    :cond_ae
    move v3, v4

    .line 273
    goto :goto_79

    .line 289
    :cond_b0
    new-instance v0, LgK;

    invoke-direct {v0, p0}, LgK;-><init>(Lcom/google/android/apps/docs/app/HomeScreenActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Lof;)LpB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LpB;

    goto :goto_ab
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 506
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 507
    sget v1, LcV;->menu_action_bar:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 508
    sget v1, LcV;->menu_home_page_a:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 509
    sget v1, LcV;->menu_home_page_b:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 510
    iget-object v1, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->c:LanD;

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LdL;->a:LdL;

    if-ne v1, v2, :cond_27

    .line 511
    sget v1, LcV;->menu_home_page_c:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 516
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()LIi;

    move-result-object v0

    sget v1, LcS;->menu_search:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LIi;->a(Landroid/view/MenuItem;LIl;)V

    .line 518
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 463
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 464
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onDestroy()V

    .line 465
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 469
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 470
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 472
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 474
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->setIntent(Landroid/content/Intent;)V

    .line 475
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a(Landroid/content/Intent;)V

    .line 481
    :goto_20
    return-void

    .line 478
    :cond_21
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 479
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->finish()V

    goto :goto_20
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 541
    iget-object v1, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    invoke-interface {v1, p0}, Lck;->a(Landroid/content/Context;)V

    .line 542
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_switch_account:I

    if-ne v1, v2, :cond_12

    .line 543
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->e()V

    .line 561
    :goto_11
    return v0

    .line 545
    :cond_12
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_send_feedback:I

    if-ne v1, v2, :cond_25

    .line 546
    new-instance v1, LXM;

    const-string v2, "android_docs"

    invoke-direct {v1, p0, v2}, LXM;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v1}, LXM;->a()V

    goto :goto_11

    .line 550
    :cond_25
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_settings:I

    if-ne v1, v2, :cond_38

    .line 551
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 553
    :cond_38
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_help:I

    if-ne v1, v2, :cond_44

    .line 554
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->i()V

    goto :goto_11

    .line 556
    :cond_44
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, LcS;->menu_try_google_drive:I

    if-ne v1, v2, :cond_5a

    .line 557
    iget-object v1, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    invoke-virtual {v1}, LkG;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a()Lx;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;->a(Ljava/lang/String;Lx;)V

    goto :goto_11

    .line 561
    :cond_5a
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_11
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 496
    const-string v0, "HomeScreenActivity"

    const-string v1, "in onPause"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 498
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->l()V

    .line 499
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LdE;

    const-string v1, "/homeScreen"

    invoke-virtual {v0, p0, v1}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onPause()V

    .line 501
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->i:Z

    .line 237
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 485
    const-string v0, "HomeScreenActivity"

    const-string v1, "in onResume"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onResume()V

    .line 487
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->j()V

    .line 488
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->m()V

    .line 490
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->g()V

    .line 491
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LdE;

    invoke-virtual {v0, p0}, LdE;->a(Ljava/lang/Object;)V

    .line 492
    return-void
.end method

.method public onSearchRequested()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 708
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 709
    iget-object v0, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    invoke-static {v0}, LnP;->a(LkG;)LnL;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/DocListAccountSuggestionProvider;->a(LnL;)V

    .line 711
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lel;

    iget-object v3, p0, Lcom/google/android/apps/docs/app/HomeScreenActivity;->a:LkG;

    invoke-virtual {v3}, LkG;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lel;->a()Lek;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a(Landroid/content/res/Resources;Lek;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1, v4}, Lcom/google/android/apps/docs/app/HomeScreenActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 714
    const/4 v0, 0x1

    return v0
.end method
