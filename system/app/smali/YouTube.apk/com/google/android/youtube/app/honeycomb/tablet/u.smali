.class final Lcom/google/android/youtube/app/honeycomb/tablet/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

.field private b:Landroid/view/ActionMode;

.field private c:Landroid/view/View;

.field private d:Lcom/google/android/youtube/core/model/Video;

.field private e:Lcom/google/android/youtube/core/transfer/Transfer;

.field private f:Landroid/view/MenuItem;

.field private g:Landroid/view/MenuItem;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;)V
    .registers 2
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/tablet/u;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/u;)Lcom/google/android/youtube/core/model/Video;
    .registers 2
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->d:Lcom/google/android/youtube/core/model/Video;

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

    .line 528
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->c:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->c:Landroid/view/View;

    if-eq v0, p1, :cond_f

    .line 529
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 531
    :cond_f
    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->f:Landroid/view/MenuItem;

    if-eqz p2, :cond_51

    move v0, v1

    :goto_14
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 532
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->g:Landroid/view/MenuItem;

    if-nez p2, :cond_1c

    move v2, v1

    :cond_1c
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 533
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->d:Lcom/google/android/youtube/core/model/Video;

    .line 534
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->c:Landroid/view/View;

    .line 535
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 536
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b:Landroid/view/ActionMode;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->d:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_50

    .line 537
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->d:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b:Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->d:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->g(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/ac;->a(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 541
    :cond_50
    return-void

    :cond_51
    move v0, v2

    .line 531
    goto :goto_14
.end method

.method public final a(Landroid/view/View;Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 544
    iget-object v0, p2, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/d;

    const-string v1, "video_id"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    if-nez v0, :cond_11

    .line 548
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->e:Lcom/google/android/youtube/core/transfer/Transfer;

    .line 549
    invoke-virtual {p0, p1, v2}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V

    .line 554
    :goto_10
    return-void

    .line 551
    :cond_11
    iput-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->e:Lcom/google/android/youtube/core/transfer/Transfer;

    .line 552
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b()V

    goto :goto_10
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b:Landroid/view/ActionMode;

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
    .line 557
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 558
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b:Landroid/view/ActionMode;

    .line 561
    :cond_c
    return-void
.end method

.method public final c()V
    .registers 6

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->h(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/tablet/v;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/v;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/u;)V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b()V

    .line 577
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->n(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->l(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/tablet/w;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v4}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->k(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/core/d;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/w;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/u;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/async/l;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/bc;)V

    .line 582
    return-void
.end method

.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 499
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 513
    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 501
    :pswitch_a
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->e:Lcom/google/android/youtube/core/transfer/Transfer;

    if-eqz v1, :cond_8

    .line 502
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->e(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Lcom/google/android/youtube/app/ui/dh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->e:Lcom/google/android/youtube/core/transfer/Transfer;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/ui/dh;->f(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 503
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b()V

    goto :goto_9

    .line 509
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->f(Lcom/google/android/youtube/app/honeycomb/tablet/m;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_9

    .line 499
    nop

    :pswitch_data_2a
    .packed-switch 0x7f08014e
        :pswitch_1d
        :pswitch_a
    .end packed-switch
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b:Landroid/view/ActionMode;

    .line 482
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 483
    const v1, 0x7f120006

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 484
    const v0, 0x7f08014e

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->f:Landroid/view/MenuItem;

    .line 485
    const v0, 0x7f08014f

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->g:Landroid/view/MenuItem;

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/u;->b:Landroid/view/ActionMode;

    .line 496
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 490
    const/4 v0, 0x1

    return v0
.end method
