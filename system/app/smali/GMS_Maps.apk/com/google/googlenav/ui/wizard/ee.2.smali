.class public Lcom/google/googlenav/ui/wizard/eE;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ai;
.implements Lax/V;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/B;

.field private b:Lax/L;

.field private c:Lcom/google/googlenav/ui/wizard/ju;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Lcom/google/googlenav/ui/wizard/eK;

.field private m:I

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Ljava/util/List;

.field private q:Ljava/util/Map;

.field private r:Ljava/lang/String;

.field private s:Lcom/google/googlenav/ui/view/dialog/bO;

.field private t:Ljava/lang/String;

.field private u:I


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/B;Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 191
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_37

    const v0, 0x7f0f001b

    :goto_e
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 170
    iput v1, p0, Lcom/google/googlenav/ui/wizard/eE;->m:I

    .line 177
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->p:Ljava/util/List;

    .line 178
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->q:Ljava/util/Map;

    .line 188
    iput v1, p0, Lcom/google/googlenav/ui/wizard/eE;->u:I

    .line 193
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/B;

    .line 194
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eE;->c:Lcom/google/googlenav/ui/wizard/ju;

    .line 196
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lax/l;->c()Lax/L;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->b:Lax/L;

    .line 198
    invoke-virtual {v0}, Lax/l;->b()Lax/U;

    move-result-object v0

    invoke-interface {v0, p0}, Lax/U;->a(Lax/V;)V

    .line 199
    return-void

    .line 191
    :cond_37
    const v0, 0x7f0f0018

    goto :goto_e
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/eE;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(Landroid/support/v4/view/PagerTitleStrip;)V
    .registers 6
    .parameter

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/support/v4/view/PagerTitleStrip;->getChildCount()I

    move-result v2

    .line 212
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_2c

    .line 213
    invoke-virtual {p1, v1}, Landroid/support/v4/view/PagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 215
    const/4 v3, 0x1

    if-ne v1, v3, :cond_25

    .line 217
    const v3, 0x7f0202c5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 218
    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 212
    :goto_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 220
    :cond_25
    const v3, 0x7f0202c4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_21

    .line 223
    :cond_2c
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 226
    const v0, 0x7f100084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->n:Landroid/view/View;

    .line 227
    const v0, 0x7f100085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->o:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->n:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/wizard/eM;

    const/4 v2, -0x1

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/eM;-><init>(Lcom/google/googlenav/ui/wizard/eE;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->o:Landroid/view/View;

    new-instance v1, Lcom/google/googlenav/ui/wizard/eM;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/eM;-><init>(Lcom/google/googlenav/ui/wizard/eE;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method private b(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 471
    if-nez p1, :cond_5

    move v0, v1

    .line 478
    :goto_4
    return v0

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 475
    if-nez v0, :cond_11

    move v0, v1

    .line 476
    goto :goto_4

    .line 478
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/eE;)Lcom/google/googlenav/ui/wizard/eK;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->e:Lcom/google/googlenav/ui/wizard/eK;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f020213

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    const/16 v0, 0x2e5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f10001e

    invoke-virtual {p0, v0, v1, v5}, Lcom/google/googlenav/ui/wizard/eE;->a(Ljava/lang/CharSequence;II)V

    .line 295
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 297
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_1e
    new-instance v0, Lcom/google/googlenav/ui/wizard/eF;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/eF;-><init>(Lcom/google/googlenav/ui/wizard/eE;)V

    new-array v1, v4, [I

    const/16 v2, 0xbc0

    aput v2, v1, v3

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/google/googlenav/ui/wizard/eE;->a(ZILag/f;[I)V

    .line 308
    return-void
.end method

.method private c(I)Landroid/widget/ListView;
    .registers 4
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/x;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/eK;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/eK;->c(I)Landroid/view/View;

    move-result-object v0

    .line 502
    const v1, 0x7f100026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/eE;)Lcom/google/googlenav/ui/wizard/B;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/B;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/eE;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 483
    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/eE;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/eE;)I
    .registers 2
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/google/googlenav/ui/wizard/eE;->m:I

    return v0
.end method

.method private n()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 391
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->b:Lax/L;

    sget-object v1, Lax/I;->c:Lax/I;

    invoke-interface {v0, v2, v1}, Lax/L;->a(ZLax/I;)V

    .line 396
    const/16 v0, 0x2f9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 397
    return-void
.end method


# virtual methods
.method protected K_()V
    .registers 3

    .prologue
    .line 234
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->b()Lax/U;

    move-result-object v0

    invoke-interface {v0, p0}, Lax/U;->b(Lax/V;)V

    .line 235
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->s:Lcom/google/googlenav/ui/view/dialog/bO;

    if-eqz v0, :cond_18

    .line 236
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->s:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-virtual {v0, v1}, Laz/a;->b(Laz/m;)V

    .line 238
    :cond_18
    return-void
.end method

.method protected N_()V
    .registers 2

    .prologue
    .line 315
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_e

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/eE;->requestWindowFeature(I)Z

    .line 318
    :cond_e
    return-void
.end method

.method public a(IFI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    return-void
.end method

.method public a(Lax/J;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 431
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/eI;)V
    .registers 4
    .parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    iget v1, p1, Lcom/google/googlenav/ui/wizard/eI;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 514
    iget v0, p1, Lcom/google/googlenav/ui/wizard/eI;->a:I

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eE;->c(I)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p1, Lcom/google/googlenav/ui/wizard/eI;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 515
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eE;->r:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/bO;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/wizard/eE;->u:I

    .line 280
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->p:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/ui/wizard/eL;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/eL;-><init>(Lcom/google/googlenav/ui/wizard/eE;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/view/dialog/bO;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/eE;->s:Lcom/google/googlenav/ui/view/dialog/bO;

    .line 282
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/eE;->t:Ljava/lang/String;

    .line 283
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Laz/a;->a(Laz/m;)V

    .line 284
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/eH;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->p:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/ui/wizard/eJ;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/eJ;-><init>(Lcom/google/googlenav/ui/wizard/eE;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/eH;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method public a(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 358
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 359
    sparse-switch v2, :sswitch_data_4e

    move v0, v1

    .line 381
    :goto_a
    return v0

    .line 361
    :sswitch_b
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->as()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 362
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/B;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/B;->h()V

    goto :goto_a

    :cond_1b
    move v0, v1

    .line 365
    goto :goto_a

    .line 367
    :sswitch_1d
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/eE;->n()V

    goto :goto_a

    .line 370
    :sswitch_21
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/aA;->h()V

    .line 373
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/B;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/B;->a()V

    .line 374
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto :goto_a

    .line 378
    :sswitch_40
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 359
    :sswitch_data_4e
    .sparse-switch
        0x102002c -> :sswitch_b
        0x7f1001de -> :sswitch_1d
        0x7f1004cd -> :sswitch_40
        0x7f1004d7 -> :sswitch_21
    .end sparse-switch
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f1001de

    const/4 v3, 0x1

    .line 344
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/x;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/eK;

    .line 347
    const/16 v1, 0x361

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 348
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/eK;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 349
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 353
    :goto_2e
    return v3

    .line 351
    :cond_2f
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2e
.end method

.method public b()V
    .registers 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eE;->i()V

    .line 427
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eE;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040108

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 243
    const v0, 0x7f1001fa

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eE;->b(Landroid/view/View;)V

    .line 246
    const v0, 0x7f1002b0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    .line 247
    new-instance v0, Lcom/google/googlenav/ui/wizard/eK;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/eK;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->e:Lcom/google/googlenav/ui/wizard/eK;

    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f1000dd

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eE;->a(Landroid/support/v4/view/PagerTitleStrip;)V

    .line 250
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/wizard/eE;->a(Landroid/view/View;)V

    .line 252
    :goto_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6a

    .line 253
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/eJ;

    .line 254
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eE;->q:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/googlenav/ui/wizard/eJ;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/eE;->e:Lcom/google/googlenav/ui/wizard/eK;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/wizard/eK;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eE;->e:Lcom/google/googlenav/ui/wizard/eK;

    iget-object v4, v0, Lcom/google/googlenav/ui/wizard/eJ;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eJ;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/ui/wizard/eK;->a(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 252
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3a

    .line 258
    :cond_6a
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->e:Lcom/google/googlenav/ui/wizard/eK;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/x;)V

    .line 259
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ai;)V

    .line 261
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->r:Ljava/lang/String;

    if-eqz v0, :cond_7f

    .line 262
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eE;->c(Ljava/lang/String;)V

    .line 265
    :cond_7f
    return-object v2
.end method

.method public d_(I)V
    .registers 6
    .parameter

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eE;->invalidateOptionsMenu()V

    .line 445
    iput p1, p0, Lcom/google/googlenav/ui/wizard/eE;->m:I

    .line 446
    iget v0, p0, Lcom/google/googlenav/ui/wizard/eE;->u:I

    if-ne p1, v0, :cond_2b

    .line 447
    const-string v0, "v"

    const-string v1, ""

    invoke-static {v0, v1}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_10
    const/16 v0, 0x7b

    const-string v1, "t"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ti="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void

    .line 450
    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/eJ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eJ;->b()V

    goto :goto_10
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public e_(I)V
    .registers 2
    .parameter

    .prologue
    .line 435
    return-void
.end method

.method public i()V
    .registers 4

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/eG;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/eG;-><init>(Lcom/google/googlenav/ui/wizard/eE;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 418
    return-void
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/B;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/B;->h()V

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v0

    return v0
.end method

.method public m()Lcom/google/googlenav/ui/wizard/eI;
    .registers 3

    .prologue
    .line 506
    new-instance v0, Lcom/google/googlenav/ui/wizard/eI;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/eI;-><init>()V

    .line 507
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eE;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v1

    iput v1, v0, Lcom/google/googlenav/ui/wizard/eI;->a:I

    .line 508
    iget v1, v0, Lcom/google/googlenav/ui/wizard/eI;->a:I

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/eE;->c(I)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, v0, Lcom/google/googlenav/ui/wizard/eI;->b:I

    .line 509
    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eE;->a:Lcom/google/googlenav/ui/wizard/B;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/B;->h()V

    .line 289
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 322
    sget-object v0, Lcom/google/googlenav/ui/wizard/eE;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 324
    const v0, 0x7f1001de

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 325
    const/16 v1, 0x580

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 327
    const v0, 0x7f1004d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_2e

    .line 330
    const/16 v1, 0x527

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 333
    :cond_2e
    const v0, 0x7f1004cd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_40

    .line 336
    const/16 v1, 0x1e6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 339
    :cond_40
    const/4 v0, 0x1

    return v0
.end method
