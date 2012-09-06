.class public LaM/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/ax;


# instance fields
.field private final a:Lcom/google/googlenav/ui/v;

.field private final b:Lat/u;

.field private final c:Lcom/google/googlenav/ui/wizard/ju;

.field private final d:LaM/am;

.field private final e:Lcom/google/googlenav/ui/ap;

.field private final f:Lcom/google/googlenav/aA;

.field private final g:Lcom/google/android/maps/MapsActivity;

.field private final h:Lcom/google/googlenav/actionbar/b;

.field private i:LaM/ay;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lcom/google/android/maps/MapsActivity;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, LaM/ay;->a:LaM/ay;

    iput-object v0, p0, LaM/av;->i:LaM/ay;

    .line 90
    iput-object p1, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    .line 91
    iget-object v0, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iput-object v0, p0, LaM/av;->c:Lcom/google/googlenav/ui/wizard/ju;

    .line 92
    iget-object v0, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    iput-object v0, p0, LaM/av;->d:LaM/am;

    .line 93
    iget-object v0, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v0

    iput-object v0, p0, LaM/av;->b:Lat/u;

    .line 94
    iget-object v0, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    iput-object v0, p0, LaM/av;->e:Lcom/google/googlenav/ui/ap;

    .line 95
    iget-object v0, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    iput-object v0, p0, LaM/av;->f:Lcom/google/googlenav/aA;

    .line 96
    iput-object p2, p0, LaM/av;->g:Lcom/google/android/maps/MapsActivity;

    .line 98
    new-instance v0, LaM/aw;

    invoke-direct {v0, p0}, LaM/aw;-><init>(LaM/av;)V

    iput-object v0, p0, LaM/av;->h:Lcom/google/googlenav/actionbar/b;

    .line 151
    return-void
.end method

.method static synthetic a(LaM/av;)LaM/ay;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LaM/av;->i:LaM/ay;

    return-object v0
.end method

.method private a(I)V
    .registers 3
    .parameter

    .prologue
    .line 410
    packed-switch p1, :pswitch_data_1c

    .line 427
    :pswitch_3
    sget-object v0, LaM/ay;->a:LaM/ay;

    iput-object v0, p0, LaM/av;->i:LaM/ay;

    .line 429
    :goto_7
    return-void

    .line 412
    :pswitch_8
    sget-object v0, LaM/ay;->c:LaM/ay;

    iput-object v0, p0, LaM/av;->i:LaM/ay;

    goto :goto_7

    .line 415
    :pswitch_d
    sget-object v0, LaM/ay;->d:LaM/ay;

    iput-object v0, p0, LaM/av;->i:LaM/ay;

    goto :goto_7

    .line 419
    :pswitch_12
    sget-object v0, LaM/ay;->b:LaM/ay;

    iput-object v0, p0, LaM/av;->i:LaM/ay;

    goto :goto_7

    .line 424
    :pswitch_17
    sget-object v0, LaM/ay;->e:LaM/ay;

    iput-object v0, p0, LaM/av;->i:LaM/ay;

    goto :goto_7

    .line 410
    :pswitch_data_1c
    .packed-switch 0x7f11000b
        :pswitch_8
        :pswitch_d
        :pswitch_17
        :pswitch_17
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private a(Landroid/view/MenuItem;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 335
    if-nez p2, :cond_11

    .line 336
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 360
    :cond_10
    :goto_10
    return-void

    .line 340
    :cond_11
    iget-object v0, p0, LaM/av;->i:LaM/ay;

    sget-object v1, LaM/ay;->b:LaM/ay;

    if-ne v0, v1, :cond_41

    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 344
    iget-object v0, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v0}, LaM/am;->u()LaM/bj;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_35

    .line 346
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    .line 354
    :cond_35
    :goto_35
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 355
    if-eqz v0, :cond_10

    .line 356
    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_10

    .line 349
    :cond_41
    invoke-interface {p1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 350
    invoke-interface {p1}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_35
.end method

.method static synthetic b(LaM/av;)LaM/am;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LaM/av;->d:LaM/am;

    return-object v0
.end method

.method private b()LaM/i;
    .registers 5

    .prologue
    .line 374
    iget-object v0, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 375
    if-nez v0, :cond_a

    .line 376
    const/4 v0, 0x0

    .line 401
    :cond_9
    :goto_9
    return-object v0

    .line 378
    :cond_a
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v1

    .line 379
    sget-object v2, LaM/ax;->a:[I

    iget-object v3, p0, LaM/av;->i:LaM/ay;

    invoke-virtual {v3}, LaM/ay;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_44

    goto :goto_9

    .line 381
    :pswitch_1c
    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    .line 382
    iget-object v0, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v0}, LaM/am;->v()LaM/O;

    move-result-object v0

    goto :goto_9

    .line 386
    :pswitch_26
    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    .line 387
    iget-object v0, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v0

    goto :goto_9

    .line 391
    :pswitch_30
    if-eqz v1, :cond_9

    .line 392
    iget-object v0, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v0}, LaM/am;->u()LaM/bj;

    move-result-object v0

    goto :goto_9

    .line 396
    :pswitch_39
    const/16 v2, 0x17

    if-eq v1, v2, :cond_9

    .line 397
    iget-object v0, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v0}, LaM/am;->x()LaM/bU;

    move-result-object v0

    goto :goto_9

    .line 379
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_26
        :pswitch_30
        :pswitch_39
    .end packed-switch
.end method

.method private b(Landroid/view/MenuItem;)V
    .registers 6
    .parameter

    .prologue
    .line 215
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 216
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->b()Z

    move-result v0

    if-nez v0, :cond_20

    .line 217
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, LaM/av;->g:Lcom/google/android/maps/MapsActivity;

    const/4 v2, 0x0

    iget-object v3, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/v;)V

    .line 219
    :cond_20
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 220
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    iget-object v2, p0, LaM/av;->h:Lcom/google/googlenav/actionbar/b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    .line 223
    :cond_2f
    return-void
.end method

.method static synthetic c(LaM/av;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/actionbar/b;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, LaM/av;->h:Lcom/google/googlenav/actionbar/b;

    return-object v0
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 238
    iget-object v1, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ab()Lcom/google/googlenav/mylocationnotifier/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/mylocationnotifier/k;->b()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 239
    if-eqz v0, :cond_116

    invoke-virtual {v0}, LaM/i;->aG()I

    move-result v1

    move v6, v1

    .line 241
    :goto_1b
    if-eqz v0, :cond_11c

    invoke-virtual {v0}, LaM/i;->aH()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v5, v1

    .line 243
    :goto_22
    if-eqz v0, :cond_125

    invoke-virtual {v0}, LaM/i;->aI()Ljava/lang/CharSequence;

    move-result-object v1

    .line 249
    :goto_28
    iget-object v2, p0, LaM/av;->i:LaM/ay;

    sget-object v7, LaM/ay;->a:LaM/ay;

    if-ne v2, v7, :cond_36

    iget-object v2, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v2}, LaM/am;->Q()Z

    move-result v2

    if-eqz v2, :cond_128

    :cond_36
    move v2, v4

    .line 251
    :goto_37
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v7

    invoke-virtual {v7, v6, v5, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 256
    :cond_3e
    const v1, 0x7f1004d4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_50

    .line 258
    iget-object v2, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->ay()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 261
    :cond_50
    const v1, 0x7f100304

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_62

    if-eqz v0, :cond_62

    .line 263
    invoke-virtual {v0}, LaM/i;->N()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 266
    :cond_62
    const v1, 0x7f1004da

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_74

    if-eqz v0, :cond_74

    .line 268
    invoke-virtual {v0}, LaM/i;->M()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 272
    :cond_74
    const v1, 0x7f1004db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_8c

    instance-of v2, v0, LaM/O;

    if-eqz v2, :cond_8c

    check-cast v0, LaM/O;

    invoke-virtual {v0}, LaM/O;->bj()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 275
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    :cond_8c
    iget-object v0, p0, LaM/av;->g:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->hasDataConnection()Z

    move-result v1

    .line 282
    const v0, 0x7f1004b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_a6

    .line 284
    if-eqz v1, :cond_12b

    const v0, 0x7f020259

    :goto_a0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 286
    invoke-direct {p0, v2, v1}, LaM/av;->a(Landroid/view/MenuItem;Z)V

    .line 289
    :cond_a6
    const v0, 0x7f1004af

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 290
    if-eqz v2, :cond_bd

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 291
    if-eqz v1, :cond_130

    const v0, 0x7f02022c

    :goto_ba
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 295
    :cond_bd
    const v0, 0x7f1004d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 296
    if-eqz v2, :cond_d4

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 297
    if-eqz v1, :cond_134

    const v0, 0x7f02024b

    :goto_d1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 301
    :cond_d4
    const v0, 0x7f1004d9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 302
    if-eqz v2, :cond_eb

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_eb

    .line 303
    if-eqz v1, :cond_138

    const v0, 0x7f02023c

    :goto_e8
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 307
    :cond_eb
    const v0, 0x7f1004d5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 308
    if-eqz v2, :cond_100

    .line 310
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_13c

    if-eqz v1, :cond_13c

    move v0, v4

    :goto_fd
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 313
    :cond_100
    const v0, 0x7f1004d6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_115

    .line 316
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v2

    if-eqz v2, :cond_112

    if-nez v1, :cond_112

    move v3, v4

    :cond_112
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 318
    :cond_115
    return v4

    .line 239
    :cond_116
    const v1, 0x7f020219

    move v6, v1

    goto/16 :goto_1b

    .line 241
    :cond_11c
    const/16 v1, 0x2af

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto/16 :goto_22

    .line 243
    :cond_125
    const/4 v1, 0x0

    goto/16 :goto_28

    :cond_128
    move v2, v3

    .line 249
    goto/16 :goto_37

    .line 284
    :cond_12b
    const v0, 0x7f02025a

    goto/16 :goto_a0

    .line 291
    :cond_130
    const v0, 0x7f02022d

    goto :goto_ba

    .line 297
    :cond_134
    const v0, 0x7f02024c

    goto :goto_d1

    .line 303
    :cond_138
    const v0, 0x7f02023d

    goto :goto_e8

    :cond_13c
    move v0, v3

    .line 310
    goto :goto_fd
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 167
    iget-object v0, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v3

    .line 169
    if-eqz v3, :cond_7b

    invoke-virtual {v3}, LaM/i;->aF()I

    move-result v0

    .line 171
    :goto_e
    iget-object v4, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v4}, LaM/am;->w()LaM/bK;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 173
    iget-object v0, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v0}, LaM/am;->w()LaM/bK;

    move-result-object v0

    invoke-virtual {v0}, LaM/bK;->aF()I

    move-result v0

    .line 175
    :cond_20
    invoke-direct {p0, v0}, LaM/av;->a(I)V

    .line 176
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 177
    invoke-static {p1}, Lav/a;->a(Landroid/view/Menu;)V

    .line 179
    iget-object v0, p0, LaM/av;->g:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->hasDataConnection()Z

    move-result v4

    .line 181
    const v0, 0x7f1004d5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 182
    if-eqz v5, :cond_44

    .line 183
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_84

    if-eqz v4, :cond_84

    move v0, v1

    :goto_41
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    :cond_44
    const v0, 0x7f1004d6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_59

    .line 188
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v5

    if-eqz v5, :cond_56

    if-nez v4, :cond_56

    move v2, v1

    :cond_56
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    :cond_59
    const v0, 0x7f100127

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_6b

    if-eqz v3, :cond_6b

    .line 196
    invoke-virtual {v3}, LaM/i;->aJ()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 199
    :cond_6b
    invoke-static {p1}, Lav/a;->b(Landroid/view/Menu;)V

    .line 201
    const v0, 0x7f1004b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_7a

    .line 203
    invoke-direct {p0, v0}, LaM/av;->b(Landroid/view/MenuItem;)V

    .line 205
    :cond_7a
    return v1

    .line 169
    :cond_7b
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ap()I

    move-result v0

    goto :goto_e

    :cond_84
    move v0, v2

    .line 183
    goto :goto_41
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x36

    const/16 v5, 0x34

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 443
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 444
    const v3, 0x102002c

    if-ne v2, v3, :cond_29

    .line 445
    iget-object v1, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ab()Lcom/google/googlenav/mylocationnotifier/k;

    move-result-object v1

    .line 446
    invoke-virtual {v1}, Lcom/google/googlenav/mylocationnotifier/k;->b()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 448
    invoke-virtual {v1}, Lcom/google/googlenav/mylocationnotifier/k;->h()V

    .line 449
    invoke-virtual {v1}, Lcom/google/googlenav/mylocationnotifier/k;->c()V

    .line 570
    :goto_22
    :sswitch_22
    return v0

    .line 453
    :cond_23
    iget-object v1, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v1, v0}, LaM/am;->b(Z)V

    goto :goto_22

    .line 458
    :cond_29
    const-string v3, "m"

    invoke-static {p1, v3}, Lav/a;->a(Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 461
    sget-object v3, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v3}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;)Z

    move-result v3

    if-eqz v3, :cond_38

    move v0, v1

    .line 463
    goto :goto_22

    .line 467
    :cond_38
    iget-object v3, p0, LaM/av;->g:Lcom/google/android/maps/MapsActivity;

    if-eqz v3, :cond_65

    iget-object v3, p0, LaM/av;->g:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v3}, Lcom/google/android/maps/MapsActivity;->hasDataConnection()Z

    move-result v3

    if-nez v3, :cond_65

    .line 468
    const v3, 0x7f1004b2

    if-eq v2, v3, :cond_58

    const v3, 0x7f1004af

    if-eq v2, v3, :cond_58

    const v3, 0x7f1004d8

    if-eq v2, v3, :cond_58

    const v3, 0x7f1004d9

    if-ne v2, v3, :cond_65

    .line 470
    :cond_58
    iget-object v0, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    const/16 v2, 0x333

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    move v0, v1

    .line 471
    goto :goto_22

    .line 475
    :cond_65
    invoke-direct {p0}, LaM/av;->b()LaM/i;

    move-result-object v3

    .line 476
    sparse-switch v2, :sswitch_data_14c

    :cond_6c
    :goto_6c
    move v0, v1

    .line 570
    goto :goto_22

    .line 478
    :sswitch_6e
    if-eqz v3, :cond_74

    .line 479
    invoke-virtual {v3}, LaM/i;->aY()Z

    goto :goto_22

    :cond_74
    move v0, v1

    .line 482
    goto :goto_22

    .line 485
    :sswitch_76
    if-eqz v3, :cond_81

    .line 486
    new-instance v2, LZ/a;

    invoke-direct {v2, v5, v5, v1, v1}, LZ/a;-><init>(IIIZ)V

    invoke-virtual {v3, v2}, LaM/i;->e(LZ/a;)Z

    goto :goto_22

    :cond_81
    move v0, v1

    .line 490
    goto :goto_22

    .line 493
    :sswitch_83
    if-eqz v3, :cond_8e

    .line 494
    new-instance v2, LZ/a;

    invoke-direct {v2, v6, v6, v1, v1}, LZ/a;-><init>(IIIZ)V

    invoke-virtual {v3, v2}, LaM/i;->e(LZ/a;)Z

    goto :goto_22

    :cond_8e
    move v0, v1

    .line 498
    goto :goto_22

    .line 500
    :sswitch_90
    if-eqz v3, :cond_9f

    invoke-virtual {v3}, LaM/i;->av()I

    move-result v2

    if-ne v2, v0, :cond_9f

    .line 501
    const/16 v1, 0xec

    const/4 v2, -0x1

    invoke-virtual {v3, v1, v2, v4}, LaM/i;->a(IILjava/lang/Object;)Z

    goto :goto_22

    :cond_9f
    move v0, v1

    .line 505
    goto :goto_22

    .line 508
    :sswitch_a1
    iget-object v2, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v2, v1}, LaM/am;->b(Z)V

    .line 509
    iget-object v1, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->at()V

    goto/16 :goto_22

    .line 514
    :sswitch_ad
    iget-object v0, p0, LaM/av;->g:Lcom/google/android/maps/MapsActivity;

    if-eqz v0, :cond_6c

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 515
    iget-object v0, p0, LaM/av;->g:Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->onSearchRequested()Z

    goto :goto_6c

    .line 520
    :sswitch_c1
    iget-object v1, p0, LaM/av;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 521
    iget-object v1, p0, LaM/av;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v2, v0, v4}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 523
    iget-object v1, p0, LaM/av;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v1

    iget-object v2, p0, LaM/av;->b:Lat/u;

    invoke-virtual {v2}, Lat/u;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_22

    .line 528
    :sswitch_ed
    iget-object v2, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    const/16 v3, 0x13c

    invoke-virtual {v2, v1, v3}, Lcom/google/googlenav/ui/v;->a(ZI)V

    goto/16 :goto_22

    .line 531
    :sswitch_f6
    iget-object v1, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->b(I)V

    goto/16 :goto_22

    .line 534
    :sswitch_fe
    iget-object v1, p0, LaM/av;->e:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/ap;->a(Z)V

    goto/16 :goto_22

    .line 537
    :sswitch_105
    iget-object v1, p0, LaM/av;->c:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, LaM/av;->d:LaM/am;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(LaM/am;Z)V

    goto/16 :goto_22

    .line 540
    :sswitch_10e
    iget-object v1, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/v;->g(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 543
    :sswitch_115
    iget-object v1, p0, LaM/av;->f:Lcom/google/googlenav/aA;

    invoke-interface {v1}, Lcom/google/googlenav/aA;->h()V

    goto/16 :goto_22

    .line 546
    :sswitch_11c
    iget-object v1, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->I()V

    goto/16 :goto_22

    .line 549
    :sswitch_123
    iget-object v1, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->J()V

    goto/16 :goto_22

    .line 553
    :sswitch_12a
    iget-object v1, p0, LaM/av;->f:Lcom/google/googlenav/aA;

    invoke-static {}, Lcom/google/googlenav/K;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 556
    :sswitch_135
    const-string v2, "m"

    const-string v3, ""

    invoke-static {v2, v3}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v2, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/v;->q(Z)V

    goto/16 :goto_22

    .line 562
    :sswitch_143
    iget-object v1, p0, LaM/av;->a:Lcom/google/googlenav/ui/v;

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->g(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 476
    :sswitch_data_14c
    .sparse-switch
        0x66 -> :sswitch_22
        0x7f100127 -> :sswitch_6e
        0x7f100304 -> :sswitch_83
        0x7f1004af -> :sswitch_c1
        0x7f1004b2 -> :sswitch_ad
        0x7f1004c4 -> :sswitch_c1
        0x7f1004cd -> :sswitch_12a
        0x7f1004d4 -> :sswitch_a1
        0x7f1004d5 -> :sswitch_135
        0x7f1004d6 -> :sswitch_143
        0x7f1004d7 -> :sswitch_115
        0x7f1004d8 -> :sswitch_f6
        0x7f1004d9 -> :sswitch_105
        0x7f1004da -> :sswitch_76
        0x7f1004db -> :sswitch_90
        0x7f1004dc -> :sswitch_fe
        0x7f1004dd -> :sswitch_ed
        0x7f1004de -> :sswitch_10e
        0x7f1004e7 -> :sswitch_11c
        0x7f1004e8 -> :sswitch_123
    .end sparse-switch
.end method
