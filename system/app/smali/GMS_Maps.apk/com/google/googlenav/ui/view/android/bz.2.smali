.class public Lcom/google/googlenav/ui/view/android/bZ;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/B;


# instance fields
.field private final a:Lcom/google/googlenav/android/BaseMapsActivity;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/view/View;

.field private d:Lcom/google/googlenav/ui/g;

.field private e:Ljava/lang/CharSequence;

.field private f:Lcom/google/googlenav/ui/ax;

.field private g:Lav/b;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/BaseMapsActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    const v0, 0x7f0f0015

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 91
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    .line 92
    new-instance v0, Lav/b;

    invoke-direct {v0}, Lav/b;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->g:Lav/b;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bZ;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->d:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110021

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 156
    invoke-static {p1}, Lav/a;->a(Landroid/view/Menu;)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/bZ;)Landroid/app/Dialog;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method private b(Landroid/view/Menu;)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->g:Lav/b;

    invoke-virtual {v0}, Lav/b;->a()[Lav/c;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_9
    if-ge v0, v3, :cond_26

    aget-object v4, v2, v0

    .line 227
    invoke-virtual {v4}, Lav/c;->getItemId()I

    move-result v5

    .line 228
    const v6, 0x7f1004e6

    invoke-virtual {v4}, Lav/c;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v6, v5, v1, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 230
    invoke-virtual {v4}, Lav/c;->isVisible()Z

    move-result v4

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 232
    :cond_26
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bZ;->h:Z

    .line 233
    return-void
.end method

.method private e()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 365
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bZ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401ef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 367
    const v1, 0x7f1003bc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 368
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bZ;->e:Ljava/lang/CharSequence;

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    const v1, 0x7f1000f9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 371
    if-eqz v1, :cond_3d

    .line 372
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    new-instance v2, Lcom/google/googlenav/ui/view/android/ca;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/ca;-><init>(Lcom/google/googlenav/ui/view/android/bZ;)V

    .line 396
    new-instance v3, Lcom/google/googlenav/ui/view/a;

    invoke-direct {v3, v4, v4}, Lcom/google/googlenav/ui/view/a;-><init>(II)V

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 401
    :cond_3d
    new-instance v1, Lcom/google/googlenav/ui/view/android/cb;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/cb;-><init>(Lcom/google/googlenav/ui/view/android/bZ;)V

    .line 411
    new-instance v2, Lcom/google/googlenav/ui/view/a;

    invoke-direct {v2, v4, v4}, Lcom/google/googlenav/ui/view/a;-><init>(II)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 414
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bZ;->invalidateOptionsMenu()V

    .line 486
    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    if-ne p1, v0, :cond_a

    .line 294
    const-string v0, ""

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/google/googlenav/ui/view/android/bZ;->a(Landroid/app/Dialog;Landroid/view/View;Lcom/google/googlenav/ui/g;Ljava/lang/CharSequence;)V

    .line 296
    :cond_a
    return-void
.end method

.method public a(Landroid/app/Dialog;Landroid/view/View;Lcom/google/googlenav/ui/g;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    .line 312
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bZ;->c:Landroid/view/View;

    .line 313
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bZ;->d:Lcom/google/googlenav/ui/g;

    .line 314
    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/bZ;->e:Ljava/lang/CharSequence;

    .line 318
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->g:Lav/b;

    invoke-virtual {v0}, Lav/b;->clear()V

    .line 319
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1a

    .line 321
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    instance-of v0, v0, LB/a;

    if-eqz v0, :cond_3a

    .line 328
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bZ;->invalidateOptionsMenu()V

    .line 333
    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->h:Z

    .line 335
    const v0, 0x7f1002ea

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bZ;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 336
    const v0, 0x7f1002eb

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bZ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 338
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bZ;->c:Landroid/view/View;

    if-nez v2, :cond_42

    .line 343
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 361
    :goto_39
    return-void

    .line 330
    :cond_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bZ;->g:Lav/b;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_1a

    .line 349
    :cond_42
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 351
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bZ;->e()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39
.end method

.method public a(Lcom/google/googlenav/ui/ax;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bZ;->f:Lcom/google/googlenav/ui/ax;

    .line 110
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bZ;->invalidateOptionsMenu()V

    .line 111
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bZ;->closeOptionsMenu()V

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->g:Lav/b;

    invoke-virtual {v0}, Lav/b;->clear()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->h:Z

    .line 102
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->c:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()V
    .registers 1

    .prologue
    .line 500
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 501
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->W()V

    .line 494
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bZ;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 436
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    .line 437
    if-nez v0, :cond_11

    .line 441
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 448
    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    const v1, 0x7f100098

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/BaseMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bZ;->setContentView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bZ;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 125
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->f:Lcom/google/googlenav/ui/ax;

    if-eqz v0, :cond_11

    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->f:Lcom/google/googlenav/ui/ax;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/googlenav/ui/ax;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    .line 151
    :goto_10
    return v0

    .line 134
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    .line 135
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->b()Z

    move-result v0

    if-nez v0, :cond_30

    .line 136
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    check-cast v0, Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v2, v0, p0, v1}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/v;)V

    .line 140
    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    instance-of v0, v0, LB/a;

    if-eqz v0, :cond_3b

    .line 143
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bZ;->a(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_10

    .line 145
    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    invoke-static {p1}, Lav/a;->a(Landroid/view/Menu;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bZ;->b(Landroid/view/Menu;)V

    .line 151
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    .line 455
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 457
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1b

    .line 465
    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 466
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onBackPressed()V

    .line 467
    const/4 v0, 0x1

    .line 472
    :goto_13
    return v0

    .line 469
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13

    .line 472
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 240
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bZ;->f:Lcom/google/googlenav/ui/ax;

    if-eqz v1, :cond_c

    .line 241
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->f:Lcom/google/googlenav/ui/ax;

    invoke-interface {v0, p2}, Lcom/google/googlenav/ui/ax;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 289
    :cond_b
    :goto_b
    return v0

    .line 245
    :cond_c
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    if-eqz v1, :cond_20

    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x7f1004e6

    if-ne v1, v2, :cond_20

    .line 246
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1, p2}, Landroid/app/Dialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_b

    .line 249
    :cond_20
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    .line 250
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 253
    const v3, 0x102002c

    if-ne v2, v3, :cond_3b

    .line 254
    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/ap;->a(Z)V

    goto :goto_b

    .line 260
    :cond_3b
    const v3, 0x7f1004dc

    if-ne v2, v3, :cond_51

    .line 261
    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/ap;->a()V

    .line 262
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 263
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bZ;->invalidateOptionsMenu()V

    goto :goto_b

    .line 268
    :cond_51
    const v3, 0x7f100078

    if-ne v2, v3, :cond_61

    .line 269
    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->az()Lcom/google/googlenav/offers/a;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "f"

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/offers/a;->a(ZLjava/lang/String;)V

    goto :goto_b

    .line 281
    :cond_61
    const v3, 0x7f1004cd

    if-eq v2, v3, :cond_7e

    const v3, 0x7f1004d7

    if-eq v2, v3, :cond_7e

    .line 282
    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/C;->o()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 284
    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/C;->a()V

    .line 288
    :cond_7e
    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/av;->a(Landroid/view/MenuItem;)Z

    goto :goto_b
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 164
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->f:Lcom/google/googlenav/ui/ax;

    if-eqz v0, :cond_d

    .line 165
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->f:Lcom/google/googlenav/ui/ax;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/ax;->a(Landroid/view/Menu;)Z

    move-result v1

    .line 217
    :cond_c
    :goto_c
    return v1

    .line 167
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    instance-of v0, v0, LB/a;

    if-nez v0, :cond_c

    .line 175
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->h:Z

    if-eqz v0, :cond_30

    .line 176
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->g:Lav/b;

    invoke-virtual {v0}, Lav/b;->clear()V

    .line 177
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_27

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bZ;->g:Lav/b;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 180
    :cond_27
    const v0, 0x7f1004e6

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeGroup(I)V

    .line 181
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bZ;->b(Landroid/view/Menu;)V

    .line 185
    :cond_30
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->g:Lav/b;

    invoke-virtual {v0}, Lav/b;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 186
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 189
    :cond_41
    const v0, 0x7f1004d4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_5b

    .line 191
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v3}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ay()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 197
    :cond_5b
    const v0, 0x7f1004dc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_7b

    sget-object v3, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v3}, Lcom/google/googlenav/android/A;->b()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 199
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    sget-object v4, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v4}, Lcom/google/googlenav/android/A;->k()I

    move-result v4

    invoke-static {v3, v4}, Lav/a;->a(Lcom/google/googlenav/android/BaseMapsActivity;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 203
    :cond_7b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bZ;->a:Lcom/google/googlenav/android/BaseMapsActivity;

    check-cast v0, Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->hasDataConnection()Z

    move-result v3

    .line 206
    const v0, 0x7f1004d5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 207
    if-eqz v4, :cond_98

    .line 208
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_af

    if-eqz v3, :cond_af

    move v0, v1

    :goto_95
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 212
    :cond_98
    const v0, 0x7f1004d6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_c

    .line 214
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v4

    if-eqz v4, :cond_aa

    if-nez v3, :cond_aa

    move v2, v1

    :cond_aa
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c

    :cond_af
    move v0, v2

    .line 208
    goto :goto_95
.end method
