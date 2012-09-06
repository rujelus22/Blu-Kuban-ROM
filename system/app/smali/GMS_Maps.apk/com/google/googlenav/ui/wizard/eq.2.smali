.class public Lcom/google/googlenav/ui/wizard/eQ;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/bc;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eO;

.field private b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/eO;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/V;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eO;->b(Lcom/google/googlenav/ui/wizard/eO;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 286
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eQ;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 287
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eQ;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->setCurrentTab(I)V

    .line 289
    :cond_1b
    return-void
.end method


# virtual methods
.method protected N_()V
    .registers 2

    .prologue
    .line 310
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_e

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/eQ;->requestWindowFeature(I)Z

    .line 313
    :cond_e
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eQ;->invalidateOptionsMenu()V

    .line 391
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eO;->b(Lcom/google/googlenav/ui/wizard/eO;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "offline"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 392
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eO;->b(Lcom/google/googlenav/ui/wizard/eO;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "offline"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2c

    .line 393
    const-string v0, "v"

    const-string v1, ""

    invoke-static {v0, v1}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_2c
    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 4
    .parameter

    .prologue
    .line 293
    const v0, 0x7f020213

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    .line 294
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/eS;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/eS;-><init>(Lcom/google/googlenav/ui/wizard/eQ;)V

    invoke-virtual {v0, p1, v1}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;)V

    .line 303
    return-void
.end method

.method public a(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 348
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 349
    sparse-switch v2, :sswitch_data_6e

    move v0, v1

    .line 373
    :goto_a
    return v0

    .line 351
    :sswitch_b
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->as()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 352
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/eO;->h()V

    goto :goto_a

    :cond_1b
    move v0, v1

    .line 355
    goto :goto_a

    .line 357
    :sswitch_1d
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eO;->c(Lcom/google/googlenav/ui/wizard/eO;)Lax/L;

    move-result-object v1

    sget-object v2, Lax/I;->c:Lax/I;

    invoke-interface {v1, v0, v2}, Lax/L;->a(ZLax/I;)V

    .line 358
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v1

    const/16 v2, 0x2f9

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 362
    :sswitch_3a
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/aA;->h()V

    .line 365
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/eO;->a()V

    .line 366
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto :goto_a

    .line 370
    :sswitch_5d
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/eO;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 349
    nop

    :sswitch_data_6e
    .sparse-switch
        0x102002c -> :sswitch_b
        0x7f1001de -> :sswitch_1d
        0x7f1004cd -> :sswitch_5d
        0x7f1004d7 -> :sswitch_3a
    .end sparse-switch
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f1001de

    const/4 v2, 0x1

    .line 337
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eQ;->q()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 338
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x361

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 339
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 343
    :goto_29
    return v2

    .line 341
    :cond_2a
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_29
.end method

.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const/16 v5, 0x2e5

    const/4 v4, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eQ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04010f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 237
    const v0, 0x7f1001fa

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 238
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 239
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/eQ;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :goto_2c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eO;->a(Lcom/google/googlenav/ui/wizard/eO;Ljava/util/Map;)Ljava/util/Map;

    .line 263
    const v0, 0x7f1002f0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    .line 264
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->setup()V

    .line 266
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    const v2, 0x7f1002b0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/wizard/eO;->a(Lcom/google/googlenav/ui/wizard/eO;Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ViewPager;

    .line 270
    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    new-instance v0, Lcom/google/googlenav/ui/ba;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eQ;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eQ;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/eO;->a(Lcom/google/googlenav/ui/wizard/eO;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eQ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/ba;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;Landroid/support/v4/view/ViewPager;Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/bc;)V

    invoke-static {v7, v0}, Lcom/google/googlenav/ui/wizard/eO;->a(Lcom/google/googlenav/ui/wizard/eO;Lcom/google/googlenav/ui/ba;)Lcom/google/googlenav/ui/ba;

    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    const/16 v1, 0x57c

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    const-string v3, "stars"

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/eO;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const-string v3, "stars"

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/eO;->b(Lcom/google/googlenav/ui/wizard/eO;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/eO;->a(ILandroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    .line 272
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    const/16 v1, 0x433

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    const-string v3, "recent"

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/eO;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const-string v3, "recent"

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/eO;->b(Lcom/google/googlenav/ui/wizard/eO;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/eO;->a(ILandroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    .line 275
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 276
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    const/16 v1, 0x361

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    const-string v3, "offline"

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/eO;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const-string v3, "offline"

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/eO;->b(Lcom/google/googlenav/ui/wizard/eO;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/eO;->a(ILandroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    .line 280
    :cond_bc
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eO;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/eQ;->a(Ljava/lang/String;)V

    .line 281
    return-object v6

    .line 242
    :cond_c4
    const v0, 0x7f1001a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 243
    const v0, 0x7f1001a9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f020213

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    new-instance v3, Lcom/google/googlenav/ui/wizard/eR;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/eR;-><init>(Lcom/google/googlenav/ui/wizard/eQ;)V

    invoke-virtual {v0, v2, v3}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 256
    const v0, 0x7f10001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eO;->h()V

    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eO;->h()V

    .line 379
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 317
    sget-object v0, Lcom/google/googlenav/ui/wizard/eQ;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 319
    const v0, 0x7f1001de

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 320
    const/16 v1, 0x580

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 322
    const v0, 0x7f1004d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_2e

    .line 324
    const/16 v1, 0x527

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 327
    :cond_2e
    const v0, 0x7f1004cd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_40

    .line 329
    const/16 v1, 0x1e6

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 332
    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    const/16 v0, 0x2e5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
