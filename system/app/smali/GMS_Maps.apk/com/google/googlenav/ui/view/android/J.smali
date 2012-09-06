.class public Lcom/google/googlenav/ui/view/android/j;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/F;

.field private b:Lcom/google/googlenav/suggest/android/SuggestView;

.field private c:Lcom/google/googlenav/suggest/android/SuggestView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/RadioGroup;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ln/B;

.field private q:Lat/B;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/google/googlenav/j;

.field private v:Z

.field private final w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/F;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f0f0018

    :goto_d
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 132
    new-instance v0, Lcom/google/googlenav/ui/view/android/k;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/k;-><init>(Lcom/google/googlenav/ui/view/android/j;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->w:Ljava/lang/Runnable;

    .line 146
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    .line 147
    return-void

    .line 144
    :cond_1a
    const v0, 0x7f0f001f

    goto :goto_d
.end method

.method private A()Z
    .registers 3

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    iget v0, v0, Lcom/google/googlenav/ui/view/F;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->r:Z

    if-nez v0, :cond_20

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    iget v0, v0, Lcom/google/googlenav/ui/view/F;->b:I

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->s:Z

    if-nez v0, :cond_20

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    iget v0, v0, Lcom/google/googlenav/ui/view/F;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->t:Z

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/u;
    .registers 3
    .parameter

    .prologue
    .line 924
    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/u;

    return-object v0
.end method

.method private a(Lad/y;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 726
    invoke-static {p1}, Lcom/google/googlenav/ui/bA;->a(Lad/y;)Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-static {v0}, Laa/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 167
    const v0, 0x7f10016b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x106

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    const v0, 0x7f10016e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x609

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    const v0, 0x7f10016c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x5cb

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    const v0, 0x7f10016d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method private a(Landroid/view/View;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method

.method private a(Lcom/google/googlenav/suggest/android/SuggestView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 681
    sget-object v0, Lcom/google/googlenav/ui/aV;->aE:Lcom/google/googlenav/ui/aV;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 685
    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 686
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 687
    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 689
    invoke-virtual {p1}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    .line 690
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/j;)V
    .registers 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/j;->v()V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/j;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/j;->f(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/j;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/j;->e(Landroid/view/View;)V

    return-void
.end method

.method private a(ZLad/y;Lcom/google/googlenav/suggest/android/SuggestView;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->v:Z

    .line 561
    if-nez p2, :cond_1a

    .line 562
    const/4 v0, 0x1

    :try_start_7
    invoke-virtual {p3, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setSuggestEnabled(Z)V

    .line 563
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/j;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/u;->a(Z)V

    .line 564
    const-string v0, ""

    invoke-virtual {p3, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_57

    .line 593
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/j;->v:Z

    .line 595
    :goto_19
    return-void

    .line 568
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/j;->a(Lad/y;)Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-virtual {p2}, Lad/y;->o()Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSuggestEnabled(Z)V

    .line 572
    invoke-virtual {p2}, Lad/y;->o()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 573
    if-eqz p1, :cond_3b

    .line 576
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/j;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/u;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/u;->a(Z)V

    .line 577
    invoke-direct {p0, p3, v0}, Lcom/google/googlenav/ui/view/android/j;->a(Lcom/google/googlenav/suggest/android/SuggestView;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_57

    .line 593
    :cond_38
    :goto_38
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/j;->v:Z

    goto :goto_19

    .line 578
    :cond_3b
    :try_start_3b
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/j;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/u;->a()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 583
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/j;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/u;->a(Z)V

    .line 584
    invoke-virtual {p3}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aE:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/text/Editable;Lcom/google/googlenav/ui/aV;)V
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_57

    goto :goto_38

    .line 593
    :catchall_57
    move-exception v0

    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/j;->v:Z

    throw v0

    .line 587
    :cond_5b
    :try_start_5b
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/android/j;->a(Lcom/google/googlenav/suggest/android/SuggestView;)Lcom/google/googlenav/ui/view/android/u;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/u;->a(Z)V

    .line 588
    sget-object v1, Lcom/google/googlenav/ui/aV;->aF:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 589
    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V
    :try_end_78
    .catchall {:try_start_5b .. :try_end_78} :catchall_57

    goto :goto_38
.end method

.method private a(ZLandroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/F;->d()Lad/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(ZLad/y;Lcom/google/googlenav/suggest/android/SuggestView;)V

    .line 672
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->n()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 673
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/j;->e(Landroid/view/View;)V

    .line 675
    :cond_14
    return-void
.end method

.method private a(Lad/y;Lad/y;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 598
    invoke-virtual {p1}, Lad/y;->l()Ln/B;

    move-result-object v1

    .line 599
    invoke-virtual {p2}, Lad/y;->l()Ln/B;

    move-result-object v2

    .line 600
    if-eqz v1, :cond_d

    if-nez v2, :cond_e

    .line 615
    :cond_d
    :goto_d
    return v0

    .line 604
    :cond_e
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v3

    .line 605
    if-eqz v3, :cond_d

    .line 609
    invoke-virtual {v1}, Ln/B;->a()Ln/p;

    move-result-object v1

    invoke-virtual {v3, v1}, Lr/Q;->a(Ln/p;)Ln/w;

    move-result-object v1

    .line 610
    invoke-virtual {v2}, Ln/B;->a()Ln/p;

    move-result-object v2

    invoke-virtual {v3, v2}, Lr/Q;->a(Ln/p;)Ln/w;

    move-result-object v2

    .line 611
    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 615
    invoke-virtual {v1}, Ln/w;->a()Ln/p;

    move-result-object v0

    invoke-virtual {v2}, Ln/w;->a()Ln/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method private a(Lat/B;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 622
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->m:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->u:Lcom/google/googlenav/j;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->r:Z

    .line 630
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->r:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->q:Lat/B;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->p:Ln/B;

    if-eqz v0, :cond_33

    .line 631
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->q:Lat/B;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/j;->p:Ln/B;

    invoke-static {v0, v2}, Lad/y;->b(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    .line 632
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/F;->d()Lad/y;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/android/j;->a(Lad/y;Lad/y;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 633
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/android/j;->r:Z

    .line 637
    :cond_33
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->r:Z

    return v0

    :cond_36
    move v0, v1

    .line 622
    goto :goto_f
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/j;)Lcom/google/googlenav/suggest/android/SuggestView;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const v2, 0x7f100165

    const/4 v1, 0x1

    .line 433
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/j;->b(Z)V

    .line 434
    invoke-direct {p0, v1, p1}, Lcom/google/googlenav/ui/view/android/j;->a(ZLandroid/view/View;)V

    .line 437
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    iget v0, v0, Lcom/google/googlenav/ui/view/F;->b:I

    packed-switch v0, :pswitch_data_b6

    .line 453
    :goto_11
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 454
    const v0, 0x7f10016f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_29

    .line 456
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :cond_29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/j;->e(Landroid/view/View;)V

    .line 498
    :goto_2d
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/j;->c(Landroid/view/View;)V

    .line 499
    return-void

    .line 439
    :pswitch_31
    const v0, 0x7f10016b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_11

    .line 442
    :pswitch_3e
    const v0, 0x7f10016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_11

    .line 445
    :pswitch_4b
    const v0, 0x7f10016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_11

    .line 448
    :pswitch_58
    const v0, 0x7f10016d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_11

    .line 460
    :cond_65
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 461
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 462
    new-instance v1, Lcom/google/googlenav/ui/view/android/q;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/q;-><init>(Lcom/google/googlenav/ui/view/android/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    const v1, 0x7f100171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 472
    const/16 v1, 0x1c7

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    const v0, 0x7f100170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/r;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/r;-><init>(Lcom/google/googlenav/ui/view/android/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    :goto_9c
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/j;->e(Landroid/view/View;)V

    goto :goto_2d

    .line 484
    :cond_a0
    const/16 v0, 0x1d8

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->o:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/s;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/s;-><init>(Lcom/google/googlenav/ui/view/android/j;)V

    invoke-static {v2, v0, v1, p1}, Lcom/google/googlenav/ui/view/android/ak;->a(ILcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;

    goto :goto_9c

    .line 437
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_31
        :pswitch_3e
        :pswitch_4b
        :pswitch_58
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/j;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/j;->c(Landroid/view/View;)V

    return-void
.end method

.method private b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/F;->b()Lad/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(ZLad/y;Lcom/google/googlenav/suggest/android/SuggestView;)V

    .line 667
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/j;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->w:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 751
    invoke-static {}, Lad/o;->a()Lad/o;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Lad/o;->d()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 753
    new-instance v1, Lcom/google/googlenav/ui/view/android/l;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/android/l;-><init>(Lcom/google/googlenav/ui/view/android/j;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lad/o;->a(Lad/r;)V

    .line 764
    :goto_12
    return-void

    .line 762
    :cond_13
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/j;->d(Landroid/view/View;)V

    goto :goto_12
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/j;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/j;->d(Landroid/view/View;)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/F;->e()Z

    move-result v0

    if-nez v0, :cond_c

    .line 769
    invoke-static {p1}, Lcom/google/googlenav/ui/i;->a(Landroid/view/View;)V

    .line 776
    :goto_b
    return-void

    .line 771
    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->o()Lcom/google/googlenav/ui/view/F;

    move-result-object v0

    invoke-static {}, Lad/o;->a()Lad/o;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    iget v2, v2, Lcom/google/googlenav/ui/view/F;->b:I

    invoke-virtual {v1, v2}, Lad/o;->a(I)Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/view/G;Ljava/util/Vector;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/view/G;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/view/android/V;Landroid/view/View;Lcom/google/googlenav/ui/view/G;)V

    goto :goto_b
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/android/j;)V
    .registers 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/j;->z()V

    return-void
.end method

.method private e(I)Lcom/google/googlenav/ui/android/ac;
    .registers 3
    .parameter

    .prologue
    .line 731
    new-instance v0, Lcom/google/googlenav/ui/view/android/t;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/t;-><init>(Lcom/google/googlenav/ui/view/android/j;I)V

    return-object v0
.end method

.method private e(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 831
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 841
    :cond_a
    :goto_a
    return-void

    .line 835
    :cond_b
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 836
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->invalidateOptionsMenu()V

    goto :goto_a

    .line 837
    :cond_19
    if-eqz p1, :cond_a

    .line 838
    const v0, 0x7f100170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/j;->A()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    :goto_29
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_2d
    const/16 v0, 0x8

    goto :goto_29
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/android/j;)Z
    .registers 2
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/j;->y()Z

    move-result v0

    return v0
.end method

.method private f(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 904
    const v0, 0x7f100162

    if-ne p1, v0, :cond_12

    .line 905
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V

    .line 909
    :goto_11
    return-void

    .line 907
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(II)V

    goto :goto_11
.end method

.method static synthetic f(Lcom/google/googlenav/ui/view/android/j;)V
    .registers 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/j;->x()V

    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/ui/view/android/j;)Lcom/google/googlenav/ui/view/F;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    return-object v0
.end method

.method private v()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 362
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->dismissDropDown()V

    .line 366
    :cond_11
    :goto_11
    return-void

    .line 363
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 364
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->dismissDropDown()V

    goto :goto_11
.end method

.method private static w()Z
    .registers 2

    .prologue
    .line 376
    sget-object v0, Lcom/google/googlenav/ui/view/android/j;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string v1, "com.google.android.inputmethod.latin/com.android.inputmethod.latin.LatinIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private x()V
    .registers 2

    .prologue
    .line 429
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    invoke-virtual {v0}, LaI/o;->j()V

    .line 430
    return-void
.end method

.method private y()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 519
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/j;->z()V

    .line 520
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/F;->a()Z

    move-result v1

    if-nez v1, :cond_23

    .line 521
    sget-object v1, Lcom/google/googlenav/ui/view/android/j;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    const/16 v2, 0x3c1

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/android/c;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 523
    const v1, 0x7f100162

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 542
    :goto_22
    return v0

    .line 526
    :cond_23
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/F;->b()Lad/y;

    move-result-object v1

    invoke-virtual {v1}, Lad/y;->c()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 527
    sget-object v1, Lcom/google/googlenav/ui/view/android/j;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/F;->b()Lad/y;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/j;->a(Lad/y;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v3}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/maps/MapsActivity;->saveQueryToHistory(Ljava/lang/String;Ljava/lang/String;Lat/B;)V

    .line 531
    :cond_50
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/F;->c()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 532
    sget-object v1, Lcom/google/googlenav/ui/view/android/j;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    const/16 v2, 0x3c0

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/android/c;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 534
    const v1, 0x7f1000c2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_22

    .line 537
    :cond_6e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/F;->d()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->c()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 538
    sget-object v0, Lcom/google/googlenav/ui/view/android/j;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/F;->d()Lad/y;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(Lad/y;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/maps/MapsActivity;->saveQueryToHistory(Ljava/lang/String;Ljava/lang/String;Lat/B;)V

    .line 542
    :cond_9b
    const/4 v0, 0x1

    goto :goto_22
.end method

.method private z()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 697
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->v:Z

    if-eqz v0, :cond_8

    .line 721
    :cond_7
    :goto_7
    return-void

    .line 700
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/F;->b()Lad/y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/j;->a(Lad/y;)Ljava/lang/String;

    move-result-object v0

    .line 701
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->e()Ljava/lang/String;

    move-result-object v2

    .line 703
    invoke-static {v2}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 705
    invoke-static {v2, v5, v5, v4}, Laa/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 706
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/F;->a:Lad/j;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    move-object v0, v1

    :goto_31
    invoke-virtual {v2, v0}, Lad/j;->a(Lad/y;)V

    .line 708
    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/view/android/j;->b(Z)V

    .line 711
    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/F;->d()Lad/y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/j;->a(Lad/y;)Ljava/lang/String;

    move-result-object v0

    .line 712
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v2}, Lcom/google/googlenav/suggest/android/SuggestView;->e()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-static {v2}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 716
    invoke-static {v2, v5, v5, v4}, Laa/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 717
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/F;->a:Lad/j;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    :goto_5f
    invoke-virtual {v2, v1}, Lad/j;->b(Lad/y;)V

    .line 719
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->i:Landroid/view/View;

    invoke-direct {p0, v4, v0}, Lcom/google/googlenav/ui/view/android/j;->a(ZLandroid/view/View;)V

    goto :goto_7

    .line 706
    :cond_68
    invoke-static {v0}, Lad/y;->a(Ljava/lang/String;)Lad/y;

    move-result-object v0

    goto :goto_31

    .line 717
    :cond_6d
    invoke-static {v0}, Lad/y;->a(Ljava/lang/String;)Lad/y;

    move-result-object v1

    goto :goto_5f
.end method


# virtual methods
.method protected I_()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 233
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 234
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-nez v1, :cond_17

    .line 235
    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 236
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 240
    :cond_17
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->as()Z

    move-result v1

    if-nez v1, :cond_27

    .line 241
    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 243
    :cond_27
    return-void
.end method

.method protected K_()V
    .registers 2

    .prologue
    .line 416
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    invoke-virtual {v0}, LaI/o;->j()V

    .line 418
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->K_()V

    .line 419
    return-void
.end method

.method protected N_()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 152
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 159
    :goto_12
    return-void

    .line 154
    :cond_13
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 155
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 157
    :cond_26
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/j;->requestWindowFeature(I)Z

    goto :goto_12
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 856
    packed-switch p1, :pswitch_data_40

    .line 869
    :goto_4
    :pswitch_4
    return-void

    .line 858
    :pswitch_5
    const v0, 0x7f100162

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/j;->c(I)V

    .line 859
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_4

    .line 862
    :pswitch_1f
    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/j;->c(I)V

    .line 863
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/SuggestView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_4

    .line 866
    :pswitch_39
    const v0, 0x7f100165

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/j;->c(I)V

    goto :goto_4

    .line 856
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1f
        :pswitch_4
        :pswitch_39
    .end packed-switch
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 163
    const/16 v0, 0xf9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 809
    .line 810
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 811
    packed-switch v0, :pswitch_data_24

    move v0, v1

    .line 825
    :cond_9
    :goto_9
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/j;->g:Lcom/google/googlenav/ui/g;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    move-result v0

    return v0

    .line 813
    :pswitch_11
    const/16 v0, 0xec

    .line 814
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/j;->y()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 815
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/j;->x()V

    goto :goto_9

    .line 819
    :pswitch_1d
    const/16 v0, 0xd6

    .line 820
    goto :goto_9

    .line 822
    :pswitch_20
    const/16 v0, 0xe4

    goto :goto_9

    .line 811
    nop

    :pswitch_data_24
    .packed-switch 0x7f1004c2
        :pswitch_20
        :pswitch_11
        :pswitch_1d
    .end packed-switch
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 798
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 799
    const v0, 0x7f1004c3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_1a

    .line 801
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/j;->A()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 804
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public b(I)V
    .registers 4
    .parameter

    .prologue
    .line 879
    packed-switch p1, :pswitch_data_20

    .line 889
    :goto_3
    return-void

    .line 881
    :pswitch_4
    const v0, 0x7f100162

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/j;->c(I)V

    .line 882
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 885
    :pswitch_12
    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/j;->c(I)V

    .line 886
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 879
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_4
        :pswitch_12
    .end packed-switch
.end method

.method protected c()Landroid/view/View;
    .registers 9

    .prologue
    const v7, 0x7f10016b

    const/4 v4, 0x0

    const v6, 0x7f10016d

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 247
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->i()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 248
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->k()V

    .line 250
    const v0, 0x7f100162

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/SuggestView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    .line 251
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    const/16 v1, 0x588

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setHint(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/suggest/android/SuggestView;->setEnoughToFilter(Z)V

    .line 253
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/u;

    invoke-direct {v1, p0, v4}, Lcom/google/googlenav/ui/view/android/u;-><init>(Lcom/google/googlenav/ui/view/android/j;Lcom/google/googlenav/ui/view/android/k;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelectAllOnFocus(Z)V

    .line 255
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/suggest/android/SuggestView;->setInputIndex(I)V

    .line 258
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/m;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/m;-><init>(Lcom/google/googlenav/ui/view/android/j;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 268
    const v0, 0x7f1000c2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/suggest/android/SuggestView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    .line 269
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    const/16 v1, 0x114

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setHint(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/suggest/android/SuggestView;->setEnoughToFilter(Z)V

    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/u;

    invoke-direct {v1, p0, v4}, Lcom/google/googlenav/ui/view/android/u;-><init>(Lcom/google/googlenav/ui/view/android/j;Lcom/google/googlenav/ui/view/android/k;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 272
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelectAllOnFocus(Z)V

    .line 273
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/suggest/android/SuggestView;->setInputIndex(I)V

    .line 276
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/n;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/n;-><init>(Lcom/google/googlenav/ui/view/android/j;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 288
    new-instance v0, Lcom/google/googlenav/ui/view/android/o;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/o;-><init>(Lcom/google/googlenav/ui/view/android/j;)V

    .line 302
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 303
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/SuggestView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 305
    const v0, 0x7f100160

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->d:Landroid/view/View;

    .line 307
    const v0, 0x7f1000c3

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->e:Landroid/widget/RadioGroup;

    .line 308
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->e:Landroid/widget/RadioGroup;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/j;->a(Landroid/view/View;)V

    .line 310
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 311
    invoke-static {}, Lcom/google/googlenav/K;->C()Z

    move-result v1

    if-eqz v1, :cond_18a

    move v1, v2

    :goto_bf
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 314
    const v0, 0x7f100163

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 315
    const/16 v1, 0xc5

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->h:Lcom/google/googlenav/ui/view/android/ak;

    const/16 v4, 0xd4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/ak;->a(I)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v0, 0x7f100166

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    const/16 v1, 0xc3

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->h:Lcom/google/googlenav/ui/view/android/ak;

    const/16 v4, 0xd5

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/ak;->a(I)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/android/j;->b(Landroid/view/View;)V

    .line 327
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_155

    .line 328
    const v0, 0x7f100167

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 329
    const/16 v1, 0x5a4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->h:Lcom/google/googlenav/ui/view/android/ak;

    const/16 v4, 0xe4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/ak;->a(I)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v0, 0x7f100169

    const/16 v1, 0x6b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/google/googlenav/ui/view/android/p;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/view/android/p;-><init>(Lcom/google/googlenav/ui/view/android/j;)V

    invoke-static {v0, v1, v4, v3}, Lcom/google/googlenav/ui/view/android/ak;->a(ILjava/lang/CharSequence;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;

    .line 340
    const/16 v0, 0x107

    invoke-direct {p0, v3, v7, v0}, Lcom/google/googlenav/ui/view/android/j;->a(Landroid/view/View;II)V

    .line 341
    const v0, 0x7f10016c

    const/16 v1, 0x5d7

    invoke-direct {p0, v3, v0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(Landroid/view/View;II)V

    .line 342
    const v0, 0x7f10016e

    const/16 v1, 0x5e0

    invoke-direct {p0, v3, v0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(Landroid/view/View;II)V

    .line 343
    const/16 v0, 0x23e

    invoke-direct {p0, v3, v6, v0}, Lcom/google/googlenav/ui/view/android/j;->a(Landroid/view/View;II)V

    .line 344
    const v0, 0x7f10001e

    const/16 v1, 0xf9

    invoke-direct {p0, v3, v0, v1}, Lcom/google/googlenav/ui/view/android/j;->a(Landroid/view/View;II)V

    .line 346
    :cond_155
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/j;->e(I)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v0, 0x7f10016c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v5}, Lcom/google/googlenav/ui/view/android/j;->e(I)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/j;->e(I)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v0, 0x7f10016e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/j;->e(I)Lcom/google/googlenav/ui/android/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    return-object v3

    .line 311
    :cond_18a
    const/16 v1, 0x8

    goto/16 :goto_bf
.end method

.method public c(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 892
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_a

    .line 894
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 896
    :cond_a
    const v0, 0x7f100162

    if-ne p1, v0, :cond_15

    .line 897
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    .line 901
    :cond_14
    :goto_14
    return-void

    .line 898
    :cond_15
    const v0, 0x7f1000c2

    if-ne p1, v0, :cond_14

    .line 899
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    goto :goto_14
.end method

.method protected d()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->d()V

    .line 392
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/google/googlenav/android/a;->d()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    .line 394
    :goto_11
    if-eqz v0, :cond_29

    invoke-static {}, Lcom/google/googlenav/ui/view/android/j;->w()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 397
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 410
    :goto_1e
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LaI/o;->e(I)V

    .line 412
    return-void

    :cond_27
    move v0, v1

    .line 392
    goto :goto_11

    .line 398
    :cond_29
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/F;->a()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 399
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->requestFocus()Z

    .line 400
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    goto :goto_1e

    .line 401
    :cond_3c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/F;->c()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 403
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->requestFocus()Z

    .line 404
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/SuggestView;->setSelection(I)V

    goto :goto_1e

    .line 407
    :cond_4f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1e
.end method

.method protected i()I
    .registers 2

    .prologue
    .line 178
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 179
    const v0, 0x7f04005e

    .line 183
    :goto_d
    return v0

    :cond_e
    const v0, 0x7f04005f

    goto :goto_d
.end method

.method public k()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 188
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 192
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/j;->m:Z

    .line 193
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/j;->n:Z

    .line 194
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/j;->o:Z

    .line 195
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/j;->r:Z

    .line 196
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/j;->s:Z

    .line 197
    iput-boolean v3, p0, Lcom/google/googlenav/ui/view/android/j;->t:Z

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->u:Lcom/google/googlenav/j;

    if-nez v0, :cond_31

    .line 201
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_31

    .line 203
    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ad()Lcom/google/googlenav/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->u:Lcom/google/googlenav/j;

    .line 207
    :cond_31
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v0

    .line 208
    if-nez v0, :cond_7e

    move-object v4, v1

    .line 209
    :goto_38
    if-nez v4, :cond_84

    move-object v0, v1

    :goto_3b
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->p:Ln/B;

    .line 210
    if-nez v4, :cond_89

    :goto_3f
    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->q:Lat/B;

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->u:Lcom/google/googlenav/j;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->q:Lat/B;

    if-eqz v0, :cond_7d

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->u:Lcom/google/googlenav/j;

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/j;->q:Lat/B;

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->m:Z

    .line 214
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->m:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->r:Z

    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->u:Lcom/google/googlenav/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->q:Lat/B;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->n:Z

    .line 217
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->n:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->s:Z

    .line 221
    invoke-static {}, Lo/O;->a()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->u:Lcom/google/googlenav/j;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/j;->q:Lat/B;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v2

    :goto_77
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->o:Z

    .line 224
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->o:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->t:Z

    .line 227
    :cond_7d
    return-void

    .line 208
    :cond_7e
    invoke-interface {v0}, Lan/h;->n()Lan/s;

    move-result-object v0

    move-object v4, v0

    goto :goto_38

    .line 209
    :cond_84
    invoke-virtual {v4}, Lan/s;->b()Ln/B;

    move-result-object v0

    goto :goto_3b

    .line 210
    :cond_89
    invoke-virtual {v4}, Lan/s;->a()Lat/B;

    move-result-object v1

    goto :goto_3f

    :cond_8e
    move v0, v3

    .line 221
    goto :goto_77
.end method

.method public l()V
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/j;->b(Landroid/view/View;)V

    .line 506
    return-void
.end method

.method protected m()V
    .registers 4

    .prologue
    .line 547
    sget-object v0, Lcom/google/googlenav/ui/view/android/j;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 551
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 552
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/j;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 554
    :cond_1e
    return-void
.end method

.method public n()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 648
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 649
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/F;->d()Lad/y;

    move-result-object v0

    if-nez v0, :cond_41

    const/4 v0, 0x0

    move-object v3, v0

    .line 650
    :goto_16
    if-eqz v3, :cond_4f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->u:Lcom/google/googlenav/j;

    if-eqz v0, :cond_4f

    .line 651
    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/android/j;->a(Lat/B;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->r:Z

    .line 652
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->n:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->u:Lcom/google/googlenav/j;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    :goto_2f
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->s:Z

    .line 655
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/j;->o:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->u:Lcom/google/googlenav/j;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v2, v1

    :cond_3e
    iput-boolean v2, p0, Lcom/google/googlenav/ui/view/android/j;->t:Z

    .line 662
    :goto_40
    return v1

    .line 649
    :cond_41
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/F;->d()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->f()Lat/B;

    move-result-object v0

    move-object v3, v0

    goto :goto_16

    :cond_4d
    move v0, v2

    .line 652
    goto :goto_2f

    :cond_4f
    move v1, v2

    .line 662
    goto :goto_40
.end method

.method public o()Lcom/google/googlenav/ui/view/F;
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->a:Lcom/google/googlenav/ui/view/F;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 781
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_52

    .line 782
    sget-object v0, Lcom/google/googlenav/ui/view/android/j;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 783
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 784
    const v0, 0x7f1004c3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 785
    const/16 v1, 0x2fe

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 786
    const v0, 0x7f1004c4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 787
    const/16 v1, 0x1c8

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 789
    :cond_40
    const v0, 0x7f1004c2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 790
    const/16 v1, 0x5a4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 791
    const/4 v0, 0x1

    .line 793
    :goto_51
    return v0

    :cond_52
    const/4 v0, 0x0

    goto :goto_51
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 510
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->onStop()V

    .line 511
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->b:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->f()V

    .line 512
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/j;->c:Lcom/google/googlenav/suggest/android/SuggestView;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/SuggestView;->f()V

    .line 513
    return-void
.end method
