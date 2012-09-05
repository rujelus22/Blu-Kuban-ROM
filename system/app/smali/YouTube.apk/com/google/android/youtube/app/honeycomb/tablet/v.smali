.class final Lcom/google/android/youtube/app/honeycomb/tablet/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

.field private b:Landroid/view/ActionMode;

.field private c:Landroid/view/View;

.field private d:Lcom/google/android/youtube/core/model/Video;

.field private e:Lcom/google/android/youtube/core/transfer/Transfer;

.field private f:Landroid/view/MenuItem;

.field private g:Landroid/view/MenuItem;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;)V
    .registers 3
    .parameter

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/v;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/v;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->d:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->c:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->c:Landroid/view/View;

    if-eq v0, p1, :cond_f

    .line 549
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 551
    :cond_f
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->f:Landroid/view/MenuItem;

    if-eqz p2, :cond_51

    move v0, v1

    :goto_14
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 552
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->g:Landroid/view/MenuItem;

    if-nez p2, :cond_1c

    move v2, v1

    :cond_1c
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 553
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->d:Lcom/google/android/youtube/core/model/Video;

    .line 554
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->c:Landroid/view/View;

    .line 555
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 556
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b:Landroid/view/ActionMode;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->d:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_50

    .line 557
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->d:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->d:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->g(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/r;->a(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 561
    :cond_50
    return-void

    :cond_51
    move v0, v2

    .line 551
    goto :goto_14
.end method

.method public final a(Landroid/view/View;Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 564
    iget-object v0, p2, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/b;

    const-string v1, "video_id"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    if-nez v0, :cond_11

    .line 568
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->e:Lcom/google/android/youtube/core/transfer/Transfer;

    .line 569
    invoke-virtual {p0, p1, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V

    .line 574
    :goto_10
    return-void

    .line 571
    :cond_11
    iput-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->e:Lcom/google/android/youtube/core/transfer/Transfer;

    .line 572
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b()V

    goto :goto_10
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 578
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b:Landroid/view/ActionMode;

    .line 581
    :cond_c
    return-void
.end method

.method public final c()V
    .registers 6

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->h(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/w;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/w;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/v;)V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    .line 596
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b()V

    .line 597
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->n(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->l(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/tablet/x;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v4}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->k(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/core/e;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/x;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/v;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/async/g;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 602
    return-void
.end method

.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 519
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 533
    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 521
    :pswitch_a
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->e:Lcom/google/android/youtube/core/transfer/Transfer;

    if-eqz v1, :cond_8

    .line 522
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->e(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Lcom/google/android/youtube/app/ui/cd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->e:Lcom/google/android/youtube/core/transfer/Transfer;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/cd;->f(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 523
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b()V

    goto :goto_9

    .line 529
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->a:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/n;->f(Lcom/google/android/youtube/app/honeycomb/tablet/n;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_9

    .line 519
    nop

    :pswitch_data_2a
    .packed-switch 0x7f0900d8
        :pswitch_1d
        :pswitch_a
    .end packed-switch
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b:Landroid/view/ActionMode;

    .line 502
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 503
    const v1, 0x7f110006

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 504
    const v0, 0x7f0900d8

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->f:Landroid/view/MenuItem;

    .line 505
    const v0, 0x7f0900d9

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->g:Landroid/view/MenuItem;

    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/v;->b:Landroid/view/ActionMode;

    .line 516
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method
