.class public Lcom/google/googlenav/ui/wizard/fE;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ft;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ft;)V
    .registers 3
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    .line 343
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0f001b

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 346
    return-void

    .line 343
    :cond_13
    const v0, 0x7f0f0018

    goto :goto_f
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f10021f

    .line 368
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->c(Lcom/google/googlenav/ui/wizard/ft;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aq()Lcom/google/googlenav/ax;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/google/googlenav/ax;->b()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 370
    invoke-virtual {v0}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ay;

    .line 371
    const v1, 0x7f10021d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 372
    invoke-virtual {v0}, Lcom/google/googlenav/ay;->a()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    const v0, 0x7f10021e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 374
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ft;->c(Lcom/google/googlenav/ui/wizard/ft;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const v0, 0x7f100220

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 378
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-nez v1, :cond_76

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-nez v1, :cond_76

    .line 379
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 380
    const v2, 0x108009a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 384
    :cond_76
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/fE;->b(Landroid/view/View;)V

    .line 386
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->as()Z

    move-result v1

    if-nez v1, :cond_a2

    .line 388
    const v1, 0x7f100221

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 389
    const/16 v2, 0x384

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 390
    new-instance v2, Lcom/google/googlenav/ui/wizard/fF;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/fF;-><init>(Lcom/google/googlenav/ui/wizard/fE;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    :cond_a1
    :goto_a1
    return-void

    .line 401
    :cond_a2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 403
    const/16 v1, 0x37f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a1
.end method

.method private b(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 439
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->i(Lcom/google/googlenav/ui/wizard/ft;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    const/16 v0, 0x405

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/ft;->i(Lcom/google/googlenav/ui/wizard/ft;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 443
    :goto_1f
    const v0, 0x7f1003c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 444
    const v1, 0x7f1004a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 446
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    const/16 v0, 0x383

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    return-void

    .line 439
    :cond_41
    const/16 v0, 0x406

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1f
.end method


# virtual methods
.method public I_()V
    .registers 3

    .prologue
    .line 453
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 454
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fE;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x384

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    :goto_13
    return-void

    .line 456
    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fE;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_13
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 427
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f100169

    if-ne v1, v2, :cond_10

    .line 428
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ft;->a()V

    .line 434
    :goto_f
    return v0

    .line 430
    :cond_10
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1004e3

    if-ne v1, v2, :cond_1f

    .line 431
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/ft;->h(Lcom/google/googlenav/ui/wizard/ft;)V

    goto :goto_f

    .line 434
    :cond_1f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fE;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ft;->a(Lcom/google/googlenav/ui/wizard/ft;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 351
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ft;->g(Lcom/google/googlenav/ui/wizard/ft;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 353
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/fE;->a(Landroid/view/View;)V

    .line 355
    return-object v0
.end method

.method public i()V
    .registers 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fE;->q()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/fE;->a(Landroid/view/View;)V

    .line 365
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fE;->a:Lcom/google/googlenav/ui/wizard/ft;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ft;->a()V

    .line 361
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    .line 410
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_c

    .line 412
    const/4 v0, 0x0

    .line 422
    :goto_b
    return v0

    .line 415
    :cond_c
    sget-object v0, Lcom/google/googlenav/ui/wizard/fE;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 417
    const v0, 0x7f100169

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 418
    const v1, 0x7f1004e3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 420
    const/16 v2, 0x6b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 421
    const/16 v0, 0x385

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 422
    const/4 v0, 0x1

    goto :goto_b
.end method
