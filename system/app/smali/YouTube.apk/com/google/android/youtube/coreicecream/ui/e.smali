.class final Lcom/google/android/youtube/coreicecream/ui/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

.field final synthetic b:Lcom/google/android/youtube/coreicecream/ui/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/coreicecream/ui/d;Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iput-object p2, p0, Lcom/google/android/youtube/coreicecream/ui/e;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 466
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Lcom/google/android/youtube/coreicecream/ui/d;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 468
    iget v9, p1, Landroid/os/Message;->what:I

    .line 469
    div-int/lit8 v1, v9, 0x2

    .line 470
    and-int/lit8 v0, v9, 0x1

    if-ne v0, v4, :cond_38

    move v0, v4

    .line 472
    :goto_19
    iget v10, p1, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_212

    .line 546
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/d;->c(Lcom/google/android/youtube/coreicecream/ui/d;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 547
    :try_start_25
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/d;->c(Lcom/google/android/youtube/coreicecream/ui/d;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 548
    if-eqz v0, :cond_206

    .line 549
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/e;->sendMessage(Landroid/os/Message;)Z

    .line 553
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_20e

    return-void

    :cond_38
    move v0, v5

    .line 470
    goto :goto_19

    .line 475
    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Lcom/google/android/youtube/coreicecream/ui/d;I)V

    .line 477
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->d()I

    move-result v2

    .line 478
    mul-int/lit8 v3, v2, 0x2

    move v1, v5

    .line 479
    :goto_4b
    if-ge v1, v3, :cond_88

    .line 480
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/d;->b(Lcom/google/android/youtube/coreicecream/ui/d;I)I

    move-result v0

    if-eq v0, v8, :cond_74

    .line 481
    div-int/lit8 v6, v1, 0x2

    .line 482
    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_78

    move v0, v4

    .line 486
    :goto_5c
    if-eqz v0, :cond_7c

    .line 487
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b()Lcom/android/ex/carousel/a;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Z

    move-result v0

    if-nez v0, :cond_7a

    move v0, v4

    :goto_71
    invoke-virtual {v7, v6, v0}, Lcom/android/ex/carousel/a;->b(IZ)V

    .line 479
    :cond_74
    :goto_74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4b

    :cond_78
    move v0, v5

    .line 482
    goto :goto_5c

    :cond_7a
    move v0, v5

    .line 487
    goto :goto_71

    .line 489
    :cond_7c
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b()Lcom/android/ex/carousel/a;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lcom/android/ex/carousel/a;->a(IZ)V

    goto :goto_74

    .line 494
    :cond_88
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 495
    if-eq v0, v2, :cond_1e

    .line 498
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v1, v1, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->d(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v3, v3, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->e(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCardSize(II)V

    .line 499
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v1, v1, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(I)V

    .line 500
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lcom/google/android/youtube/coreicecream/ui/d;->c(Lcom/google/android/youtube/coreicecream/ui/d;I)V

    goto/16 :goto_1e

    .line 505
    :pswitch_bd
    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v6, v6, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v6}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/Adapter;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_1e

    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v6, v6, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v6}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->d()I

    move-result v6

    if-ge v1, v6, :cond_1e

    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v6, v9}, Lcom/google/android/youtube/coreicecream/ui/d;->b(Lcom/google/android/youtube/coreicecream/ui/d;I)I

    move-result v6

    if-eq v6, v8, :cond_1e

    .line 507
    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v6, v9, v8}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Lcom/google/android/youtube/coreicecream/ui/d;II)V

    .line 508
    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v6, v6, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v6}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v7}, Lcom/google/android/youtube/coreicecream/ui/d;->b(Lcom/google/android/youtube/coreicecream/ui/d;)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v1, v7, v3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 510
    if-eqz v0, :cond_104

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v3, v3, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->f(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_158

    .line 511
    :cond_104
    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v3, v3, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->f(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 512
    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v3, v3, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->b(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Z

    move-result v3

    if-eqz v3, :cond_15f

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v3, v3, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->g(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 514
    :goto_126
    if-eqz v0, :cond_161

    .line 515
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v3, v3, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v3}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->h(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v4, v4, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->i(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v4

    invoke-static {v0, v6, v3, v4, v5}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Landroid/view/View;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 517
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    .line 518
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    int-to-float v3, v3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V

    .line 524
    :cond_158
    :goto_158
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v0, v7}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Lcom/google/android/youtube/coreicecream/ui/d;Landroid/view/View;)V

    goto/16 :goto_1e

    :cond_15f
    move-object v3, v7

    .line 512
    goto :goto_126

    .line 520
    :cond_161
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->d(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v2

    iget-object v5, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v5, v5, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v5}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->e(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v5

    invoke-static {v0, v3, v2, v5, v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Landroid/view/View;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 521
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    goto :goto_158

    .line 529
    :pswitch_181
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->j(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 530
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/d;->b(Lcom/google/android/youtube/coreicecream/ui/d;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 531
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->j(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    move v5, v1

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 532
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v0, v4}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Lcom/google/android/youtube/coreicecream/ui/d;Landroid/view/View;)V

    goto/16 :goto_1e

    .line 537
    :pswitch_1be
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->k(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 538
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->c(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/d;->b(Lcom/google/android/youtube/coreicecream/ui/d;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 539
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v2, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->a(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;[I)[I

    .line 540
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/coreicecream/ui/d;->a:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->k(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v2

    move v5, v1

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 541
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    invoke-static {v0, v4}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Lcom/google/android/youtube/coreicecream/ui/d;Landroid/view/View;)V

    goto/16 :goto_1e

    .line 551
    :cond_206
    :try_start_206
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/e;->b:Lcom/google/android/youtube/coreicecream/ui/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/youtube/coreicecream/ui/d;->a(Lcom/google/android/youtube/coreicecream/ui/d;Z)Z
    :try_end_20c
    .catchall {:try_start_206 .. :try_end_20c} :catchall_20e

    goto/16 :goto_36

    .line 553
    :catchall_20e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 472
    nop

    :pswitch_data_212
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_bd
        :pswitch_181
        :pswitch_1be
    .end packed-switch
.end method
